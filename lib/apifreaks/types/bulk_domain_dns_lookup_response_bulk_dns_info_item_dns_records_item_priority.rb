# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemPriority < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { Integer }, optional: false, nullable: false

      field :dns_type, -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemPriorityDNSType }, optional: false, nullable: false, api_name: "dnsType"

      field :ttl, -> { Integer }, optional: false, nullable: false

      field :raw_text, -> { String }, optional: false, nullable: false, api_name: "rawText"

      field :r_rset_type, -> { Integer }, optional: false, nullable: false, api_name: "rRsetType"

      field :target, -> { String }, optional: false, nullable: false

      field :priority, -> { Integer }, optional: false, nullable: false
    end
  end
end
