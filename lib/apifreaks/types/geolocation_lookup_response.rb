# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponse < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :hostname, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::GeolocationLookupResponseLocation }, optional: true, nullable: false

      field :country_metadata, -> { Apifreaks::Types::GeolocationLookupResponseCountryMetadata }, optional: true, nullable: false

      field :network, -> { Apifreaks::Types::GeolocationLookupResponseNetwork }, optional: true, nullable: false

      field :currency, -> { Apifreaks::Types::GeolocationLookupResponseCurrency }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::GeolocationLookupResponseSecurity }, optional: true, nullable: false

      field :abuse, -> { Internal::Types::Array[Apifreaks::Types::GeolocationLookupResponseAbuseItem] }, optional: true, nullable: false

      field :time_zone, -> { Apifreaks::Types::GeolocationLookupResponseTimeZone }, optional: true, nullable: false

      field :user_agent, -> { Apifreaks::Types::GeolocationLookupResponseUserAgent }, optional: true, nullable: false
    end
  end
end
