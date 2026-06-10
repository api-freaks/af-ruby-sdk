# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSHistoryResponse < Internal::Types::Model
      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"

      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"

      field :current_page, -> { Integer }, optional: true, nullable: false, api_name: "currentPage"

      field :historical_dns_records, -> { Internal::Types::Array[Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItem] }, optional: true, nullable: false, api_name: "historicalDnsRecords"
    end
  end
end
