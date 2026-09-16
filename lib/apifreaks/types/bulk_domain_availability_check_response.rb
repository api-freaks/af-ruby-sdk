# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainAvailabilityCheckResponse < Internal::Types::Model
      field :bulk_domain_available_response, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainAvailabilityCheckResponseBulkDomainAvailableResponseItem] }, optional: true, nullable: false
    end
  end
end
