# frozen_string_literal: true

module Apifreaks
  module Types
    # Returned when `sug=false` — availability for the queried domain only, no suggestions.
    class DomainAvailabilitySuggestionsResponseDomain < Internal::Types::Model
      field :domain, -> { String }, optional: true, nullable: false

      field :domain_availability, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "domainAvailability"
    end
  end
end
