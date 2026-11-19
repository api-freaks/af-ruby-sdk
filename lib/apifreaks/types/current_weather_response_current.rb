# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Current weather data
    class CurrentWeatherResponseCurrent < Internal::Types::Model
      field :timestamp, -> { String }, optional: false, nullable: false

      field :temperature2m, -> { Float }, optional: false, nullable: false, api_name: "temperature_2m"

      field :relative_humidity2m, -> { Float }, optional: false, nullable: false, api_name: "relative_humidity_2m"

      field :apparent_temperature, -> { Float }, optional: false, nullable: false

      field :snowfall, -> { Float }, optional: false, nullable: false

      field :rain, -> { Float }, optional: false, nullable: false

      field :showers, -> { Float }, optional: false, nullable: false

      field :precipitation, -> { Float }, optional: false, nullable: false

      field :weather_code, -> { Integer }, optional: false, nullable: false

      field :cloud_cover, -> { Float }, optional: false, nullable: false

      field :pressure_msl, -> { Float }, optional: false, nullable: false

      field :surface_pressure, -> { Float }, optional: false, nullable: false

      field :wind_speed10m, -> { Float }, optional: false, nullable: false, api_name: "wind_speed_10m"

      field :wind_direction10m, -> { Integer }, optional: false, nullable: false, api_name: "wind_direction_10m"

      field :wind_gusts10m, -> { Float }, optional: false, nullable: false, api_name: "wind_gusts_10m"

      field :astronomy, -> { Apifreaks::Types::CurrentWeatherResponseCurrentAstronomy }, optional: false, nullable: false

      field :air_quality, -> { Apifreaks::Types::CurrentWeatherResponseCurrentAirQuality }, optional: false, nullable: false
    end
  end
end
