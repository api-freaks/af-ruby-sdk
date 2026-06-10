# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainSslChainLookupRequestFormat }, optional: true, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"

      field :ssl_raw, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sslRaw"
    end
  end
end
