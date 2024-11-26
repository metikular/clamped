# frozen_string_literal: true

RSpec.describe Array do
  it "returns only elements in allowlist" do
    expect(%i[apple banana orange].clamped(%i[apple banana])).to eq %i[apple banana]
  end

  it "returns no elements for an empty allowlist" do
    expect(%i[apple banana orange].clamped([])).to eq []
  end

  it "returns all elements for a subset of the allowlist" do
    expect(%i[apple banana].clamped(%i[apple banana orange])).to eq %i[apple banana]
  end
end
