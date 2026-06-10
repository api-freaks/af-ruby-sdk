# frozen_string_literal: true

module Apifreaks
  module Types
    # Daily historical data
    class WeatherTimeSeriesResponseHistoricalValueDaily < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :weather_code, -> { Integer }, optional: true, nullable: false

      field :temperature2m_mean, -> { Integer }, optional: true, nullable: false, api_name: "temperature_2m_mean"

      field :temperature2m_max, -> { Integer }, optional: true, nullable: false, api_name: "temperature_2m_max"

      field :temperature2m_min, -> { Integer }, optional: true, nullable: false, api_name: "temperature_2m_min"

      field :apparent_temperature_mean, -> { Integer }, optional: true, nullable: false

      field :apparent_temperature_max, -> { Integer }, optional: true, nullable: false

      field :apparent_temperature_min, -> { Integer }, optional: true, nullable: false

      field :precipitation_sum, -> { Integer }, optional: true, nullable: false

      field :rain_sum, -> { Integer }, optional: true, nullable: false

      field :snowfall_sum, -> { Integer }, optional: true, nullable: false

      field :wind_speed10m_max, -> { Integer }, optional: true, nullable: false, api_name: "wind_speed_10m_max"

      field :wind_gusts10m_max, -> { Integer }, optional: true, nullable: false, api_name: "wind_gusts_10m_max"

      field :wind_speed10m_mean, -> { Integer }, optional: true, nullable: false, api_name: "wind_speed_10m_mean"

      field :wind_speed10m_min, -> { Integer }, optional: true, nullable: false, api_name: "wind_speed_10m_min"

      field :wind_gusts10m_min, -> { Integer }, optional: true, nullable: false, api_name: "wind_gusts_10m_min"

      field :wind_gusts10m_mean, -> { Integer }, optional: true, nullable: false, api_name: "wind_gusts_10m_mean"

      field :wind_direction10m_dominant, -> { Integer }, optional: true, nullable: false, api_name: "wind_direction_10m_dominant"

      field :shortwave_radiation_sum, -> { Integer }, optional: true, nullable: false

      field :et0fao_evapotranspiration_sum, -> { Integer }, optional: true, nullable: false, api_name: "et0_fao_evapotranspiration_sum"

      field :cloud_cover_mean, -> { Integer }, optional: true, nullable: false

      field :dew_point2m_mean, -> { Integer }, optional: true, nullable: false, api_name: "dew_point_2m_mean"

      field :dew_point2m_max, -> { Integer }, optional: true, nullable: false, api_name: "dew_point_2m_max"

      field :dew_point2m_min, -> { Integer }, optional: true, nullable: false, api_name: "dew_point_2m_min"

      field :relative_humidity2m_mean, -> { Integer }, optional: true, nullable: false, api_name: "relative_humidity_2m_mean"

      field :relative_humidity2m_max, -> { Integer }, optional: true, nullable: false, api_name: "relative_humidity_2m_max"

      field :relative_humidity2m_min, -> { Integer }, optional: true, nullable: false, api_name: "relative_humidity_2m_min"

      field :pressure_msl_mean, -> { Integer }, optional: true, nullable: false

      field :surface_pressure_mean, -> { Integer }, optional: true, nullable: false
    end
  end
end
