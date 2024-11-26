# frozen_string_literal: true

class Hash
  def clamped(allowlist)
    slice(*allowlist)
  end
end
