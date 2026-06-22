# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainAvailabilitySuggestionsResponseDomainAvailableResponseItem < Internal::Types::Model
      field :domain, -> { String }, optional: false, nullable: false

      field :domain_availability, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "domainAvailability"
    end
  end
end
