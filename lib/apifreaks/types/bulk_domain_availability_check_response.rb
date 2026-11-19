# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkDomainAvailabilityCheckResponse < Internal::Types::Model
      field :bulk_domain_available_response, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainAvailabilityCheckResponseBulkDomainAvailableResponseItem] }, optional: true, nullable: false

      field :bulk_domain_availability_response, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainAvailabilityCheckResponseBulkDomainAvailabilityResponseItem] }, optional: true, nullable: false
    end
  end
end
