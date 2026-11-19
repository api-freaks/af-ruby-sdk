# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module GetCreditsUsageResponseSubStatus
      extend Apifreaks::Internal::Types::Enum

      ACTIVE = "active"
      OVERDUE = "overdue"
      CANCELLED = "cancelled"
      DEACTIVATED = "deactivated"
    end
  end
end
