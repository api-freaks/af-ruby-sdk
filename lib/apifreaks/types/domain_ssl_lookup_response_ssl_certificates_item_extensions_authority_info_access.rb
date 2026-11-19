# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItemExtensionsAuthorityInfoAccess < Internal::Types::Model
      field :issuers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :ocsp, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
