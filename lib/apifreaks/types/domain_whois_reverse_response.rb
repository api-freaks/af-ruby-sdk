# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisReverseResponse < Internal::Types::Model
      field :total_result, -> { Integer }, optional: true, nullable: false, api_name: "totalResult"

      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"

      field :current_page, -> { Integer }, optional: true, nullable: false, api_name: "currentPage"

      field :whois_domains_historical, -> { Internal::Types::Array[Apifreaks::Types::DomainWhoisReverseResponseWhoisDomainsHistoricalItem] }, optional: true, nullable: false
    end
  end
end
