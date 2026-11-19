# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module GetCreditsUsageResponseSubSurchargeStatus
      extend Apifreaks::Internal::Types::Enum

      NONE = "none"
      PAYMENT_ADDED = "payment_added"
      PAYMENT_CLEARED = "payment_cleared"
    end
  end
end
