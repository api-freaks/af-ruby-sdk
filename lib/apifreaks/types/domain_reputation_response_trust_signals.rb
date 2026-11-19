# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Trust scoring and supporting signals for the domain.
    class DomainReputationResponseTrustSignals < Internal::Types::Model
      field :trust_score, -> { Integer }, optional: false, nullable: false

      field :trust_band, -> { String }, optional: false, nullable: false

      field :signals, -> { Apifreaks::Types::DomainReputationResponseTrustSignalsSignals }, optional: false, nullable: false

      field :indicators, -> { Apifreaks::Types::DomainReputationResponseTrustSignalsIndicators }, optional: false, nullable: false
    end
  end
end
