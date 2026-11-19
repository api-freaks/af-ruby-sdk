# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module SubdomainsLookupRequestStatus
      extend Apifreaks::Internal::Types::Enum

      ACTIVE = "active"
      INACTIVE = "inactive"
    end
  end
end
