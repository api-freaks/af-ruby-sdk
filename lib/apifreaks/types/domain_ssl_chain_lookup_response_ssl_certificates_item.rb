# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItem < Internal::Types::Model
      field :chain_order, -> { String }, optional: false, nullable: false, api_name: "chainOrder"

      field :authentication_type, -> { String }, optional: false, nullable: false, api_name: "authenticationType"

      field :validity_start_date, -> { String }, optional: false, nullable: false, api_name: "validityStartDate"

      field :validity_end_date, -> { String }, optional: false, nullable: false, api_name: "validityEndDate"

      field :serial_number, -> { String }, optional: false, nullable: false, api_name: "serialNumber"

      field :signature_algorithm, -> { String }, optional: false, nullable: false, api_name: "signatureAlgorithm"

      field :subject, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemSubject }, optional: false, nullable: false

      field :issuer, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemIssuer }, optional: false, nullable: false

      field :public_key, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemPublicKey }, optional: false, nullable: false, api_name: "publicKey"

      field :extensions, -> { Apifreaks::Types::DomainSslChainLookupResponseSslCertificatesItemExtensions }, optional: false, nullable: false

      field :pem_raw, -> { String }, optional: true, nullable: false, api_name: "pemRaw"
    end
  end
end
