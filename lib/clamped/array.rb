# frozen_string_literal: true

class Array
  def clamped(allowlist)
    self.select do |item|
      allowlist.include?(item)
    end
  end
end
