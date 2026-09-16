# frozen_string_literal: true

module Apifreaks
  module Types
    # Signals contributing to the trust score.
    class DomainReputationResponseTrustSignalsSignals < Internal::Types::Model
      field :positive, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseTrustSignalsSignalsPositiveItem] }, optional: false, nullable: false

      field :negative, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseTrustSignalsSignalsNegativeItem] }, optional: false, nullable: false

      field :neutral, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseTrustSignalsSignalsNeutralItem] }, optional: false, nullable: false
    end
  end
end
