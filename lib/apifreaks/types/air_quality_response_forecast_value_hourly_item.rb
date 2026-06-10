# frozen_string_literal: true

module Apifreaks
  module Types
    class AirQualityResponseForecastValueHourlyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :pm10, -> { Integer }, optional: true, nullable: false

      field :carbon_monoxide, -> { Integer }, optional: true, nullable: false

      field :pm25, -> { Integer }, optional: true, nullable: false, api_name: "pm2_5"

      field :carbon_dioxide, -> { Integer }, optional: true, nullable: false

      field :nitrogen_dioxide, -> { Integer }, optional: true, nullable: false

      field :sulphur_dioxide, -> { Integer }, optional: true, nullable: false

      field :ozone, -> { Integer }, optional: true, nullable: false

      field :dust, -> { Integer }, optional: true, nullable: false

      field :uv_index, -> { Integer }, optional: true, nullable: false

      field :aerosol_optical_depth, -> { Integer }, optional: true, nullable: false

      field :uv_index_clear_sky, -> { Integer }, optional: true, nullable: false
    end
  end
end
