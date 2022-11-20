# frozen_string_literal: true

RSpec.describe Symbol do
  context "when in strict mode" do
    it "returns nil when not in whitelist" do
      expect(:apple.clamped(%i[banana orange])).to be_nil
    end

    it "returns default when not in whitelist" do
      expect(:apple.clamped(%i[banana orange], default: :strawberry)).to eq :strawberry
    end

    it "returns the same string when in whitelist" do
      expect(:apple.clamped(%i[apple banana orange])).to eq :apple
    end
  end

  context "when not in strict mode" do
    it "returns nil when not in whitelist" do
      expect(:apple.clamped(%i[banana orange], strict: false)).to be_nil
    end

    it "returns default when not in whitelist" do
      expect(:apple.clamped(%i[banana orange], strict: false, default: :strawberry)).to eq :strawberry
    end

    it "returns the same string when in whitelist" do
      expect(:apple.clamped(%i[apple banana orange], strict: false)).to eq :apple
    end

    it "returns the same string when in whitelist and converted to a symbol" do
      expect(:apple.clamped(%w[apple banana orange], strict: false)).to eq :apple
    end
  end
end
