# frozen_string_literal: true

module Apifreaks
  module Types
    # Sender Policy Framework configuration.
    class DomainReputationResponseEmailDeliverabilityAuthenticationSpf < Internal::Types::Model
      field :present, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :policy, -> { String }, optional: false, nullable: false

      field :record, -> { String }, optional: false, nullable: false
    end
  end
end
