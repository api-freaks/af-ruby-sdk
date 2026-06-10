# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItemExtensions < Internal::Types::Model
      field :authority_key_identifier, -> { String }, optional: false, nullable: false, api_name: "authorityKeyIdentifier"

      field :subject_key_identifier, -> { String }, optional: false, nullable: false, api_name: "subjectKeyIdentifier"

      field :key_usages, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "keyUsages"

      field :extended_key_usages, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "extendedKeyUsages"

      field :crl_distribution_points, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "crlDistributionPoints"

      field :authority_info_access, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensionsAuthorityInfoAccess }, optional: false, nullable: false, api_name: "authorityInfoAccess"

      field :subject_alternative_names, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensionsSubjectAlternativeNames }, optional: true, nullable: false, api_name: "subjectAlternativeNames"

      field :certificate_policies, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensionsCertificatePolicies }, optional: false, nullable: false, api_name: "certificatePolicies"
    end
  end
end
