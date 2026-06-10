# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSLookupResponseDNSTypes < Internal::Types::Model
      field :a, -> { Integer }, optional: true, nullable: false, api_name: "A"

      field :aaaa, -> { Integer }, optional: true, nullable: false, api_name: "AAAA"

      field :cname, -> { Integer }, optional: true, nullable: false, api_name: "CNAME"

      field :mx, -> { Integer }, optional: true, nullable: false, api_name: "MX"

      field :ns, -> { Integer }, optional: true, nullable: false, api_name: "NS"

      field :soa, -> { Integer }, optional: true, nullable: false, api_name: "SOA"

      field :txt, -> { Integer }, optional: true, nullable: false, api_name: "TXT"

      field :spf, -> { Integer }, optional: true, nullable: false, api_name: "SPF"
    end
  end
end
