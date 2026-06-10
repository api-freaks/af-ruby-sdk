# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemExtensions < Internal::Types::Model
      field :authority_key_identifier, -> { String }, optional: false, nullable: false, api_name: "authorityKeyIdentifier"

      field :subject_key_identifier, -> { String }, optional: false, nullable: false, api_name: "subjectKeyIdentifier"

      field :key_usages, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "keyUsages"

      field :extended_key_usages, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "extendedKeyUsages"

      field :crl_distribution_points, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "crlDistributionPoints"

      field :authority_info_access, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensionsAuthorityInfoAccess }, optional: false, nullable: false, api_name: "authorityInfoAccess"

      field :subject_alternative_names, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensionsSubjectAlternativeNames }, optional: true, nullable: false, api_name: "subjectAlternativeNames"

      field :certificate_policies, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensionsCertificatePolicies }, optional: false, nullable: false, api_name: "certificatePolicies"
    end
  end
end
