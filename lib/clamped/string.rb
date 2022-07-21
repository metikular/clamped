# frozen_string_literal: true

class String
  def clamped(whitelist, strict: true)
    is_included = proc do |item|
      if strict
        item == self
      else
        item.to_s == self
      end
    end

    return self if whitelist.any?(is_included)
  end
end
