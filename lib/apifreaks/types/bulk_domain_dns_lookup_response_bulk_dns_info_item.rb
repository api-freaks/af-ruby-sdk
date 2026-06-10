# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainDNSLookupResponseBulkDNSInfoItem < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :query_time, -> { String }, optional: false, nullable: false, api_name: "queryTime"

      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"

      field :domain_registered, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "domainRegistered"

      field :dns_types, -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSTypes }, optional: false, nullable: false, api_name: "dnsTypes"

      field :dns_records, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItem] }, optional: false, nullable: false, api_name: "dnsRecords"
    end
  end
end
