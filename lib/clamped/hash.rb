# frozen_string_literal: true

class Hash
  def clamped(whitelist)
    slice(*whitelist)
  end
end
