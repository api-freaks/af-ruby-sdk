# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslLookupResponse < Internal::Types::Model
      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"

      field :query_time, -> { String }, optional: false, nullable: false, api_name: "queryTime"

      field :ssl_certificates, -> { Internal::Types::Array[Apifreaks::Types::DomainSslLookupResponseSslCertificatesItem] }, optional: false, nullable: false, api_name: "sslCertificates"

      field :ssl_raw, -> { String }, optional: true, nullable: false, api_name: "sslRaw"
    end
  end
end
