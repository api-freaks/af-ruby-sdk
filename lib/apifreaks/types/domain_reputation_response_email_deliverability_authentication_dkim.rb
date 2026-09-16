# frozen_string_literal: true

module Apifreaks
  module Types
    # DomainKeys Identified Mail configuration.
    class DomainReputationResponseEmailDeliverabilityAuthenticationDkim < Internal::Types::Model
      field :found, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :selectors_found, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :providers_detected, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :note, -> { String }, optional: false, nullable: false
    end
  end
end
