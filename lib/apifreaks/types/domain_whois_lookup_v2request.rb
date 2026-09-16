# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisLookupV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainWhoisLookupV2RequestFormat }, optional: true, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"
    end
  end
end
