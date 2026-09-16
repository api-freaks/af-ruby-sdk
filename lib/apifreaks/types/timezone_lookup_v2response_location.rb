# frozen_string_literal: true

module Apifreaks
  module Types
    # Geographic location information. Only present for location (address) and ip (or client-IP fallback) lookups;
    # absent for tz, lat/long, iata_code/icao_code, and lo_code lookups. Field set varies by mode: location returns
    # location_string plus a basic field set (country_name, state_prov, city, locality, latitude, longitude); ip/default
    # returns a richer geo-IP field set (continent_code, continent_name, country_code2, country_code3,
    # country_name_official, is_eu, state_code, district, zipcode) plus the common fields, but never location_string or
    # locality.
    class TimezoneLookupV2ResponseLocation < Internal::Types::Model
      field :location_string, -> { String }, optional: true, nullable: false

      field :continent_code, -> { String }, optional: true, nullable: false

      field :continent_name, -> { String }, optional: true, nullable: false

      field :country_code2, -> { String }, optional: true, nullable: false

      field :country_code3, -> { String }, optional: true, nullable: false

      field :country_name, -> { String }, optional: true, nullable: false

      field :country_name_official, -> { String }, optional: true, nullable: false

      field :is_eu, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :state_prov, -> { String }, optional: true, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :district, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :zipcode, -> { String }, optional: true, nullable: false

      field :latitude, -> { String }, optional: true, nullable: false

      field :longitude, -> { String }, optional: true, nullable: false
    end
  end
end
