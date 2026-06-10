# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemNetworkAsn < Internal::Types::Model
      field :as_number, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :asn_name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :date_allocated, -> { String }, optional: true, nullable: false

      field :allocation_status, -> { String }, optional: true, nullable: false

      field :num_of_ipv4routes, -> { String }, optional: true, nullable: false, api_name: "num_of_ipv4_routes"

      field :num_of_ipv6routes, -> { String }, optional: true, nullable: false, api_name: "num_of_ipv6_routes"

      field :rir, -> { String }, optional: true, nullable: false
    end
  end
end
