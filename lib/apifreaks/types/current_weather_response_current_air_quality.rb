# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Air quality metrics including pollutant concentrations and AQI values.
    class CurrentWeatherResponseCurrentAirQuality < Internal::Types::Model
      field :timestamp, -> { String }, optional: false, nullable: false

      field :european_aqi, -> { Integer }, optional: false, nullable: false

      field :us_aqi, -> { Integer }, optional: false, nullable: false

      field :pm10, -> { Float }, optional: false, nullable: false

      field :pm25, -> { Float }, optional: false, nullable: false, api_name: "pm2_5"

      field :carbon_monoxide, -> { Float }, optional: false, nullable: false

      field :nitrogen_dioxide, -> { Float }, optional: false, nullable: false

      field :sulphur_dioxide, -> { Float }, optional: false, nullable: false

      field :ozone, -> { Float }, optional: false, nullable: false

      field :dust, -> { Float }, optional: false, nullable: false

      field :uv_index, -> { Float }, optional: false, nullable: false

      field :aerosol_optical_depth, -> { Float }, optional: false, nullable: false

      field :uv_index_clear_sky, -> { Float }, optional: false, nullable: false
    end
  end
end
