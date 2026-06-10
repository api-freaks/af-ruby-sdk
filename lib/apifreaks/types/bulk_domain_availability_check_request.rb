# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainAvailabilityCheckRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkDomainAvailabilityCheckRequestFormat }, optional: true, nullable: false

      field :source, -> { Apifreaks::Types::BulkDomainAvailabilityCheckRequestSource }, optional: true, nullable: false

      field :domain_names, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "domainNames"
    end
  end
end
