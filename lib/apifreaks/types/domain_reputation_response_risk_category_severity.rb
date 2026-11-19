# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module DomainReputationResponseRiskCategorySeverity
      extend Apifreaks::Internal::Types::Enum

      NONE = "none"
      LOW = "low"
      MEDIUM = "medium"
      HIGH = "high"
    end
  end
end
