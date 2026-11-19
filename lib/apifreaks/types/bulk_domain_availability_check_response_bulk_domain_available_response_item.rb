# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkDomainAvailabilityCheckResponseBulkDomainAvailableResponseItem < Internal::Types::Model
      field :domain, -> { String }, optional: true, nullable: false

      field :domain_availability, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "domainAvailability"

      field :status, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
