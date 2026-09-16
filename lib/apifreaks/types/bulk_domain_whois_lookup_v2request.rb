# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainWhoisLookupV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkDomainWhoisLookupV2RequestFormat }, optional: true, nullable: false

      field :domain_names, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "domainNames"
    end
  end
end
