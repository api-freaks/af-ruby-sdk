# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItemExtensionsAuthorityInfoAccess < Internal::Types::Model
      field :issuers, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :ocsp, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
