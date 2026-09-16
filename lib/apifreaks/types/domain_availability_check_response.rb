# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainAvailabilityCheckResponse < Internal::Types::Model
      field :domain, -> { String }, optional: true, nullable: false

      field :domain_availability, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "domainAvailability"

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
