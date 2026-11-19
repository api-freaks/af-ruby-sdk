# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Sender Policy Framework configuration.
    class DomainReputationResponseEmailDeliverabilityAuthenticationSpf < Internal::Types::Model
      field :present, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :policy, -> { String }, optional: false, nullable: true

      field :record, -> { String }, optional: false, nullable: true
    end
  end
end
