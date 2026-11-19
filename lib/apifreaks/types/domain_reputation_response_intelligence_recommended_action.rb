# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module DomainReputationResponseIntelligenceRecommendedAction
      extend Apifreaks::Internal::Types::Enum

      ALLOW = "allow"
      MONITOR = "monitor"
      BLOCK = "block"
    end
  end
end
