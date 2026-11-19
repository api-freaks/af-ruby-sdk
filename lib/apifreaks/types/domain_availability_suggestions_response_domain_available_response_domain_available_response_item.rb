# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainAvailabilitySuggestionsResponseDomainAvailableResponseDomainAvailableResponseItem < Internal::Types::Model
      field :domain, -> { String }, optional: false, nullable: false

      field :domain_availability, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "domainAvailability"

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
