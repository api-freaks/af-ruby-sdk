# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponse < Internal::Types::Model
      field :as_number, -> { String }, optional: false, nullable: false, api_name: "asNumber"

      field :as_name, -> { String }, optional: false, nullable: false, api_name: "asName"

      field :org_name, -> { String }, optional: false, nullable: false, api_name: "orgName"

      field :description, -> { String }, optional: true, nullable: false

      field :org_handle, -> { String }, optional: false, nullable: false, api_name: "orgHandle"

      field :country, -> { String }, optional: false, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :website, -> { String }, optional: true, nullable: false

      field :allocation_status, -> { String }, optional: false, nullable: false, api_name: "allocationStatus"

      field :num_of_i_pv4routes, -> { String }, optional: false, nullable: false, api_name: "numOfIPv4Routes"

      field :num_of_i_pv6routes, -> { String }, optional: false, nullable: false, api_name: "numOfIPv6Routes"

      field :whois_host, -> { String }, optional: false, nullable: false, api_name: "whoisHost"

      field :date_allocated, -> { String }, optional: true, nullable: false, api_name: "dateAllocated"

      field :type, -> { String }, optional: false, nullable: false

      field :route_objects, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseRouteObjectsItem] }, optional: false, nullable: false, api_name: "routeObjects"

      field :whois_response, -> { String }, optional: false, nullable: false, api_name: "whoisResponse"

      field :downstreams, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseDownstreamsItem] }, optional: false, nullable: false

      field :parsed_whois_response, -> { Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponse }, optional: false, nullable: false, api_name: "parsedWhoisResponse"

      field :upstreams, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseUpstreamsItem] }, optional: false, nullable: false

      field :peers, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponsePeersItem] }, optional: false, nullable: false

      field :contacts, -> { Apifreaks::Types::AsnWhoisLookupResponseContacts }, optional: false, nullable: false

      field :legacy_routes, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "legacyRoutes"

      field :whois_raw_response, -> { String }, optional: true, nullable: false

      field :r_whois_raw_response, -> { String }, optional: true, nullable: false

      field :query_time, -> { String }, optional: true, nullable: false
    end
  end
end
