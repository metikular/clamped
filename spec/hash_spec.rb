# frozen_string_literal: true

RSpec.describe Hash do
  it "returns only elements in allowlist" do
    expect(%i[apple banana orange].clamped(%i[apple banana])).to eq %i[apple banana]
    expect(
      {
        apple: "golden",
        banana: "cavendish",
        orange: "sinensis"
      }.clamped(%i[apple banana])
    ).to eq({
      apple: "golden",
      banana: "cavendish"
    })
  end
end
