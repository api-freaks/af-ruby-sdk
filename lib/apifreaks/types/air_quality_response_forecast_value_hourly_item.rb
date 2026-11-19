# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class AirQualityResponseForecastValueHourlyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :pm10, -> { Float }, optional: true, nullable: false

      field :carbon_monoxide, -> { Float }, optional: true, nullable: false

      field :pm25, -> { Float }, optional: true, nullable: false, api_name: "pm2_5"

      field :carbon_dioxide, -> { Float }, optional: true, nullable: false

      field :nitrogen_dioxide, -> { Float }, optional: true, nullable: false

      field :sulphur_dioxide, -> { Float }, optional: true, nullable: false

      field :ozone, -> { Float }, optional: true, nullable: false

      field :dust, -> { Float }, optional: true, nullable: false

      field :uv_index, -> { Float }, optional: true, nullable: false

      field :aerosol_optical_depth, -> { Float }, optional: true, nullable: false

      field :uv_index_clear_sky, -> { Float }, optional: true, nullable: false
    end
  end
end
