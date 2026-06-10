# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemOne < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { Integer }, optional: false, nullable: false

      field :dns_type, -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemOneDNSType }, optional: false, nullable: false, api_name: "dnsType"

      field :ttl, -> { Integer }, optional: false, nullable: false

      field :raw_text, -> { String }, optional: false, nullable: false, api_name: "rawText"

      field :r_rset_type, -> { Integer }, optional: false, nullable: false, api_name: "rRsetType"

      field :target, -> { String }, optional: false, nullable: false
    end
  end
end
