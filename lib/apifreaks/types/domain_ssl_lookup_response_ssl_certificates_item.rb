# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponseSslCertificatesItem < Internal::Types::Model
      field :chain_order, -> { String }, optional: false, nullable: false, api_name: "chainOrder"

      field :authentication_type, -> { String }, optional: false, nullable: false, api_name: "authenticationType"

      field :validity_start_date, -> { String }, optional: false, nullable: false, api_name: "validityStartDate"

      field :validity_end_date, -> { String }, optional: false, nullable: false, api_name: "validityEndDate"

      field :serial_number, -> { String }, optional: false, nullable: false, api_name: "serialNumber"

      field :signature_algorithm, -> { String }, optional: false, nullable: false, api_name: "signatureAlgorithm"

      field :subject, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemSubject }, optional: false, nullable: false

      field :issuer, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemIssuer }, optional: false, nullable: false

      field :public_key, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemPublicKey }, optional: false, nullable: false, api_name: "publicKey"

      field :extensions, -> { Apifreaks::Types::DomainSslLookupResponseSslCertificatesItemExtensions }, optional: false, nullable: false

      field :pem_raw, -> { String }, optional: true, nullable: false, api_name: "pemRaw"
    end
  end
end
