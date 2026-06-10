# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneConvertRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::TimezoneConvertRequestFormat }, optional: true, nullable: false

      field :time, -> { String }, optional: true, nullable: false

      field :tz_from, -> { String }, optional: true, nullable: false

      field :tz_to, -> { String }, optional: true, nullable: false

      field :lat_from, -> { Integer }, optional: true, nullable: false

      field :long_from, -> { Integer }, optional: true, nullable: false

      field :lat_to, -> { Integer }, optional: true, nullable: false

      field :long_to, -> { Integer }, optional: true, nullable: false

      field :location_from, -> { String }, optional: true, nullable: false

      field :location_to, -> { String }, optional: true, nullable: false

      field :iata_from, -> { String }, optional: true, nullable: false

      field :iata_to, -> { String }, optional: true, nullable: false

      field :icao_from, -> { String }, optional: true, nullable: false

      field :icao_to, -> { String }, optional: true, nullable: false

      field :locode_from, -> { String }, optional: true, nullable: false

      field :locode_to, -> { String }, optional: true, nullable: false
    end
  end
end
