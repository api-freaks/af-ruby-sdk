# frozen_string_literal: true

module Apifreaks
  module Types
    # Current marine data
    class MarineWeatherResponseCurrent < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :wave_height, -> { Integer }, optional: true, nullable: false

      field :wave_direction, -> { Integer }, optional: true, nullable: false

      field :wave_period, -> { Integer }, optional: true, nullable: false

      field :wind_wave_height, -> { Integer }, optional: true, nullable: false

      field :wind_wave_direction, -> { Integer }, optional: true, nullable: false

      field :wind_wave_period, -> { Integer }, optional: true, nullable: false

      field :swell_wave_height, -> { Integer }, optional: true, nullable: false

      field :swell_wave_direction, -> { Integer }, optional: true, nullable: false

      field :swell_wave_period, -> { Integer }, optional: true, nullable: false

      field :sea_level_height_msl, -> { Integer }, optional: true, nullable: false

      field :sea_surface_temperature, -> { Integer }, optional: true, nullable: false

      field :ocean_current_velocity, -> { Integer }, optional: true, nullable: false

      field :ocean_current_direction, -> { Integer }, optional: true, nullable: false
    end
  end
end
