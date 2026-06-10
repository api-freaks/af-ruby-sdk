# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemPublicKey < Internal::Types::Model
      field :key_size, -> { String }, optional: false, nullable: false, api_name: "keySize"

      field :key_algorithm, -> { String }, optional: false, nullable: false, api_name: "keyAlgorithm"

      field :pem_raw, -> { String }, optional: false, nullable: false, api_name: "pemRaw"
    end
  end
end
