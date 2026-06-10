# frozen_string_literal: true

module Apifreaks
  module Types
    # Air quality metrics including pollutant concentrations and AQI values.
    class CurrentWeatherResponseCurrentAirQuality < Internal::Types::Model
      field :timestamp, -> { String }, optional: false, nullable: false

      field :european_aqi, -> { Integer }, optional: false, nullable: false

      field :us_aqi, -> { Integer }, optional: false, nullable: false

      field :pm10, -> { Integer }, optional: false, nullable: false

      field :pm25, -> { Integer }, optional: false, nullable: false, api_name: "pm2_5"

      field :carbon_monoxide, -> { Integer }, optional: false, nullable: false

      field :nitrogen_dioxide, -> { Integer }, optional: false, nullable: false

      field :sulphur_dioxide, -> { Integer }, optional: false, nullable: false

      field :ozone, -> { Integer }, optional: false, nullable: false

      field :dust, -> { Integer }, optional: false, nullable: false

      field :uv_index, -> { Integer }, optional: false, nullable: false

      field :aerosol_optical_depth, -> { Integer }, optional: false, nullable: false

      field :uv_index_clear_sky, -> { Integer }, optional: false, nullable: false
    end
  end
end
