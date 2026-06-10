# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSReverseResponse < Internal::Types::Model
      field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"

      field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"

      field :current_page, -> { Integer }, optional: false, nullable: false, api_name: "currentPage"

      field :reverse_dns_records, -> { Internal::Types::Array[Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItem] }, optional: false, nullable: false, api_name: "reverseDnsRecords"
    end
  end
end
