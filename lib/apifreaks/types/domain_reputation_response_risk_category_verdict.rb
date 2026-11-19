# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module DomainReputationResponseRiskCategoryVerdict
      extend Apifreaks::Internal::Types::Enum

      SAFE = "safe"
      SUSPICIOUS = "suspicious"
      UNKNOWN = "unknown"
    end
  end
end
