# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSTypes < Internal::Types::Model
      field :a, -> { Float }, optional: true, nullable: false, api_name: "A"

      field :aaaa, -> { Float }, optional: true, nullable: false, api_name: "AAAA"

      field :cname, -> { Float }, optional: true, nullable: false, api_name: "CNAME"

      field :mx, -> { Float }, optional: true, nullable: false, api_name: "MX"

      field :ns, -> { Float }, optional: true, nullable: false, api_name: "NS"

      field :soa, -> { Float }, optional: true, nullable: false, api_name: "SOA"

      field :txt, -> { Float }, optional: true, nullable: false, api_name: "TXT"

      field :spf, -> { Float }, optional: true, nullable: false, api_name: "SPF"

      field :ptr, -> { Float }, optional: true, nullable: false, api_name: "PTR"
    end
  end
end
