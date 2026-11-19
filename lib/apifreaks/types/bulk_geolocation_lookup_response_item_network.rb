# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemNetwork < Internal::Types::Model
      field :asn, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemNetworkAsn }, optional: true, nullable: false

      field :connection_type, -> { String }, optional: true, nullable: false

      field :company, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemNetworkCompany }, optional: true, nullable: false
    end
  end
end
