# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemAddress < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { Integer }, optional: false, nullable: false

      field :dns_type, -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemAddressDNSType }, optional: false, nullable: false, api_name: "dnsType"

      field :ttl, -> { Integer }, optional: false, nullable: false

      field :raw_text, -> { String }, optional: false, nullable: false, api_name: "rawText"

      field :r_rset_type, -> { Integer }, optional: false, nullable: false, api_name: "rRsetType"

      field :address, -> { String }, optional: false, nullable: false
    end
  end
end
