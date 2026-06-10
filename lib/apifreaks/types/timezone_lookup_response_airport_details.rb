# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponseAirportDetails < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :longitude, -> { String }, optional: false, nullable: false

      field :latitude, -> { String }, optional: false, nullable: false

      field :elevation_ft, -> { Integer }, optional: false, nullable: false

      field :continent_code, -> { String }, optional: false, nullable: false

      field :country_code, -> { String }, optional: false, nullable: false

      field :state_code, -> { String }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :iata_code, -> { String }, optional: false, nullable: false

      field :icao_code, -> { String }, optional: false, nullable: false

      field :faa_code, -> { String }, optional: false, nullable: false
    end
  end
end
