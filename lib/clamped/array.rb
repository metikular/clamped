# frozen_string_literal: true

class Array
  def clamped(whitelist)
    self.select do |item|
      whitelist.include?(item)
    end
  end
end
