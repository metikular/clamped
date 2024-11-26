# frozen_string_literal: true

RSpec.describe String do
  context "when in strict mode" do
    it "returns nil when not in allowlist" do
      expect("apple".clamped(%w[banana orange])).to be_nil
    end

    it "returns default value when not in allowlist" do
      expect("apple".clamped(%w[banana orange], default: "strawberry")).to eq "strawberry"
    end

    it "returns the same string when in allowlist" do
      expect("apple".clamped(%w[apple banana orange])).to eq "apple"
    end
  end

  context "when not in strict mode" do
    it "returns nil when not in allowlist" do
      expect("apple".clamped(%w[banana orange], strict: false)).to be_nil
    end

    it "returns default value when not in allowlist" do
      expect("apple".clamped(%w[banana orange], strict: false, default: "strawberry")).to eq "strawberry"
    end

    it "returns the same string when in allowlist" do
      expect("apple".clamped(%w[apple banana orange], strict: false)).to eq "apple"
    end

    it "returns the same string when in allowlist and converted to a string" do
      expect("apple".clamped(%i[apple banana orange], strict: false)).to eq "apple"
    end
  end
end
