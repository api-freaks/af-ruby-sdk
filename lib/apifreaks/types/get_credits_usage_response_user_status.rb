# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module GetCreditsUsageResponseUserStatus
      extend Apifreaks::Internal::Types::Enum

      ACTIVE = "active"
      INACTIVE = "inactive"
      DELETED = "deleted"
    end
  end
end
