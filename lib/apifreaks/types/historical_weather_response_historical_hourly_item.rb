# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class HistoricalWeatherResponseHistoricalHourlyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :temperature2m, -> { Float }, optional: true, nullable: false, api_name: "temperature_2m"

      field :relative_humidity2m, -> { Float }, optional: true, nullable: false, api_name: "relative_humidity_2m"

      field :dew_point2m, -> { Float }, optional: true, nullable: false, api_name: "dew_point_2m"

      field :apparent_temperature, -> { Float }, optional: true, nullable: false

      field :precipitation, -> { Float }, optional: true, nullable: false

      field :rain, -> { Float }, optional: true, nullable: false

      field :snowfall, -> { Float }, optional: true, nullable: false

      field :weather_code, -> { Integer }, optional: true, nullable: false

      field :pressure_msl, -> { Float }, optional: true, nullable: false

      field :surface_pressure, -> { Float }, optional: true, nullable: false

      field :cloud_cover, -> { Float }, optional: true, nullable: false

      field :et0fao_evapotranspiration, -> { Float }, optional: true, nullable: false, api_name: "et0_fao_evapotranspiration"

      field :wind_speed10m, -> { Float }, optional: true, nullable: false, api_name: "wind_speed_10m"

      field :wind_direction10m, -> { Integer }, optional: true, nullable: false, api_name: "wind_direction_10m"

      field :wind_gusts10m, -> { Float }, optional: true, nullable: false, api_name: "wind_gusts_10m"

      field :albedo, -> { Float }, optional: true, nullable: false

      field :shortwave_radiation, -> { Float }, optional: true, nullable: false

      field :direct_radiation, -> { Float }, optional: true, nullable: false

      field :diffuse_radiation, -> { Float }, optional: true, nullable: false

      field :direct_normal_irradiance, -> { Float }, optional: true, nullable: false

      field :global_tilted_irradiance, -> { Float }, optional: true, nullable: false
    end
  end
end
