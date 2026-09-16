# frozen_string_literal: true

module Apifreaks
  module Types
    # Geographic location information for the astronomy calculation. The set of populated fields depends on which lookup
    # mode the request used: (1) location param (geocode-by-address) returns location_string plus a basic field set
    # (country_name, state_prov, city, locality, latitude, longitude, elevation); (2) lat + long params
    # (geocode-by-coordinates) returns the same basic field set minus location_string, and locality may be an empty
    # string when the coordinates don't resolve to a named sub-area; (3) ip param, or no location/lat/long/ip param at
    # all (falls back to geo-IP lookup of the client's IP), returns the full geo-IP field set — continent_code,
    # continent_name, country_code2, country_code3, country_name_official, is_eu, state_code, district, zipcode — in
    # addition to the basic fields, but never location_string. elevation can be an empty string when elevation data is
    # unavailable for the resolved location.
    class AstronomyLookupV2ResponseLocation < Internal::Types::Model
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

      field :zipcode, -> { String }, optional: true, nullable: false

      field :latitude, -> { String }, optional: false, nullable: false

      field :longitude, -> { String }, optional: false, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :elevation, -> { String }, optional: true, nullable: false
    end
  end
end
