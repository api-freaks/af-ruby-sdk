# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponseAirportDetails < Internal::Types::Model
      field :type, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :longitude, -> { Float }, optional: true, nullable: false

      field :latitude, -> { Float }, optional: true, nullable: false

      field :elevation_ft, -> { Integer }, optional: true, nullable: false

      field :continent_code, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :iata_code, -> { String }, optional: true, nullable: false

      field :icao_code, -> { String }, optional: true, nullable: false

      field :faa_code, -> { String }, optional: true, nullable: false
    end
  end
end
