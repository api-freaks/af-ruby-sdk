# frozen_string_literal: true

module Apifreaks
  module Types
    # Current weather data
    class BulkCurrentWeatherResponseBulkItemCurrent < Internal::Types::Model
      field :timestamp, -> { String }, optional: false, nullable: false

      field :temperature2m, -> { Integer }, optional: false, nullable: false, api_name: "temperature_2m"

      field :relative_humidity2m, -> { Integer }, optional: false, nullable: false, api_name: "relative_humidity_2m"

      field :apparent_temperature, -> { Integer }, optional: false, nullable: false

      field :snowfall, -> { Integer }, optional: false, nullable: false

      field :rain, -> { Integer }, optional: false, nullable: false

      field :showers, -> { Integer }, optional: false, nullable: false

      field :precipitation, -> { Integer }, optional: false, nullable: false

      field :weather_code, -> { Integer }, optional: false, nullable: false

      field :cloud_cover, -> { Integer }, optional: false, nullable: false

      field :pressure_msl, -> { Integer }, optional: false, nullable: false

      field :surface_pressure, -> { Integer }, optional: false, nullable: false

      field :wind_speed10m, -> { Integer }, optional: false, nullable: false, api_name: "wind_speed_10m"

      field :wind_direction10m, -> { Integer }, optional: false, nullable: false, api_name: "wind_direction_10m"

      field :wind_gusts10m, -> { Integer }, optional: false, nullable: false, api_name: "wind_gusts_10m"

      field :astronomy, -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemCurrentAstronomy }, optional: false, nullable: false

      field :air_quality, -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemCurrentAirQuality }, optional: false, nullable: false
    end
  end
end
