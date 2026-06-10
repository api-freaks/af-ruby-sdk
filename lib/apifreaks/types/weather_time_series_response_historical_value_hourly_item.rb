# frozen_string_literal: true

module Apifreaks
  module Types
    class WeatherTimeSeriesResponseHistoricalValueHourlyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :temperature2m, -> { Integer }, optional: true, nullable: false, api_name: "temperature_2m"

      field :relative_humidity2m, -> { Integer }, optional: true, nullable: false, api_name: "relative_humidity_2m"

      field :dew_point2m, -> { Integer }, optional: true, nullable: false, api_name: "dew_point_2m"

      field :apparent_temperature, -> { Integer }, optional: true, nullable: false

      field :precipitation, -> { Integer }, optional: true, nullable: false

      field :rain, -> { Integer }, optional: true, nullable: false

      field :snowfall, -> { Integer }, optional: true, nullable: false

      field :weather_code, -> { Integer }, optional: true, nullable: false

      field :pressure_msl, -> { Integer }, optional: true, nullable: false

      field :surface_pressure, -> { Integer }, optional: true, nullable: false

      field :cloud_cover, -> { Integer }, optional: true, nullable: false

      field :et0fao_evapotranspiration, -> { Integer }, optional: true, nullable: false, api_name: "et0_fao_evapotranspiration"

      field :wind_speed10m, -> { Integer }, optional: true, nullable: false, api_name: "wind_speed_10m"

      field :wind_direction10m, -> { Integer }, optional: true, nullable: false, api_name: "wind_direction_10m"

      field :wind_gusts10m, -> { Integer }, optional: true, nullable: false, api_name: "wind_gusts_10m"

      field :albedo, -> { Integer }, optional: true, nullable: false

      field :shortwave_radiation, -> { Integer }, optional: true, nullable: false

      field :direct_radiation, -> { Integer }, optional: true, nullable: false

      field :diffuse_radiation, -> { Integer }, optional: true, nullable: false

      field :direct_normal_irradiance, -> { Integer }, optional: true, nullable: false

      field :global_tilted_irradiance, -> { Integer }, optional: true, nullable: false
    end
  end
end
