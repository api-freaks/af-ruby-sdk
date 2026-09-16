# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainDNSLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkDomainDNSLookupRequestFormat }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :domain_names, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "domainNames"
    end
  end
end
