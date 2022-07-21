# frozen_string_literal: true

class Symbol
  def clamped(whitelist, strict: true)
    is_included = proc do |item|
      if strict
        item == self
      else
        item.to_sym == self
      end
    end

    return self if whitelist.any?(is_included)
  end
end
