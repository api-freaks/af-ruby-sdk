# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemExtensionsAuthorityInfoAccess < Internal::Types::Model
      field :issuers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :ocsp, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
