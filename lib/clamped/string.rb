# frozen_string_literal: true

class String
  def clamped(allowlist, strict: true, default: nil)
    is_included = proc do |item|
      if strict
        item == self
      else
        item.to_s == self
      end
    end

    return self if allowlist.any?(is_included)
    default
  end
end
