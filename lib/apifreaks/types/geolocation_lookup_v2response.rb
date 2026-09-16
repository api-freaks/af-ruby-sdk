# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupV2Response < Internal::Types::Model
      field :ip, -> { String }, optional: false, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :hostname, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::GeolocationLookupV2ResponseLocation }, optional: true, nullable: false

      field :country_metadata, -> { Apifreaks::Types::GeolocationLookupV2ResponseCountryMetadata }, optional: true, nullable: false

      field :network, -> { Apifreaks::Types::GeolocationLookupV2ResponseNetwork }, optional: true, nullable: false

      field :asn, -> { Apifreaks::Types::GeolocationLookupV2ResponseAsn }, optional: true, nullable: false

      field :company, -> { Apifreaks::Types::GeolocationLookupV2ResponseCompany }, optional: true, nullable: false

      field :currency, -> { Apifreaks::Types::GeolocationLookupV2ResponseCurrency }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::GeolocationLookupV2ResponseSecurity }, optional: true, nullable: false

      field :abuse, -> { Apifreaks::Types::GeolocationLookupV2ResponseAbuse }, optional: true, nullable: false

      field :time_zone, -> { Apifreaks::Types::GeolocationLookupV2ResponseTimeZone }, optional: true, nullable: false

      field :user_agent, -> { Apifreaks::Types::GeolocationLookupV2ResponseUserAgent }, optional: true, nullable: false
    end
  end
end
