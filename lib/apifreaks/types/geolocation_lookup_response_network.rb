# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseNetwork < Internal::Types::Model
      field :asn, -> { Apifreaks::Types::GeolocationLookupResponseNetworkAsn }, optional: true, nullable: false

      field :connection_type, -> { String }, optional: true, nullable: false

      field :company, -> { Apifreaks::Types::GeolocationLookupResponseNetworkCompany }, optional: true, nullable: false
    end
  end
end
