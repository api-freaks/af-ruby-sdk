# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItemExtensionsSubjectAlternativeNames < Internal::Types::Model
      field :dns_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "dnsNames"

      field :email_addresses, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "emailAddresses"

      field :ip_addresses, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "ipAddresses"

      field :uris, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
