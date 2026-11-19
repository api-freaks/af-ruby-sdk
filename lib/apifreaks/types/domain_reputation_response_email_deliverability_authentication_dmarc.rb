# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Domain-based Message Authentication, Reporting and Conformance configuration.
    class DomainReputationResponseEmailDeliverabilityAuthenticationDmarc < Internal::Types::Model
      field :present, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :policy, -> { String }, optional: false, nullable: true

      field :reporting_configured, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
