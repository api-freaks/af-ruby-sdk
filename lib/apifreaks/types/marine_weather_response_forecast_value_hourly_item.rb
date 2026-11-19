# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class MarineWeatherResponseForecastValueHourlyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :wave_height, -> { Float }, optional: true, nullable: false

      field :wave_direction, -> { Integer }, optional: true, nullable: false

      field :wave_period, -> { Float }, optional: true, nullable: false

      field :wind_wave_height, -> { Float }, optional: true, nullable: false

      field :wind_wave_peak_period, -> { Float }, optional: true, nullable: false

      field :wind_wave_direction, -> { Integer }, optional: true, nullable: false

      field :wind_wave_period, -> { Float }, optional: true, nullable: false

      field :swell_wave_height, -> { Float }, optional: true, nullable: false

      field :swell_wave_direction, -> { Integer }, optional: true, nullable: false

      field :swell_wave_period, -> { Float }, optional: true, nullable: false

      field :swell_wave_peak_period, -> { Float }, optional: true, nullable: false

      field :sea_surface_temperature, -> { Float }, optional: true, nullable: false

      field :sea_level_height_msl, -> { Float }, optional: true, nullable: false

      field :ocean_current_velocity, -> { Float }, optional: true, nullable: false

      field :ocean_current_direction, -> { Integer }, optional: true, nullable: false
    end
  end
end
