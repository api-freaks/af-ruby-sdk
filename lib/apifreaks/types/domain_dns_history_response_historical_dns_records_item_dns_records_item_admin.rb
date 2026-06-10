# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemAdmin < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { Integer }, optional: false, nullable: false

      field :dns_type, -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemAdminDNSType }, optional: false, nullable: false, api_name: "dnsType"

      field :ttl, -> { Integer }, optional: false, nullable: false

      field :raw_text, -> { String }, optional: false, nullable: false, api_name: "rawText"

      field :r_rset_type, -> { Integer }, optional: false, nullable: false, api_name: "rRsetType"

      field :admin, -> { String }, optional: false, nullable: false

      field :host, -> { String }, optional: false, nullable: false

      field :expire, -> { Integer }, optional: false, nullable: false

      field :minimum, -> { Integer }, optional: false, nullable: false

      field :refresh, -> { Integer }, optional: false, nullable: false

      field :retry_, -> { Integer }, optional: false, nullable: false, api_name: "retry"

      field :serial, -> { Integer }, optional: false, nullable: false
    end
  end
end
