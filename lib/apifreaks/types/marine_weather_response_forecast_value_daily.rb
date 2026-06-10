# frozen_string_literal: true

module Apifreaks
  module Types
    # Daily marine forecast data
    class MarineWeatherResponseForecastValueDaily < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :wave_height_max, -> { Integer }, optional: true, nullable: false

      field :wave_direction_dominant, -> { Integer }, optional: true, nullable: false

      field :wave_period_max, -> { Integer }, optional: true, nullable: false

      field :wind_wave_height_max, -> { Integer }, optional: true, nullable: false

      field :wind_wave_direction_dominant, -> { Integer }, optional: true, nullable: false

      field :wind_wave_period_max, -> { Integer }, optional: true, nullable: false

      field :wind_wave_peak_period_max, -> { Integer }, optional: true, nullable: false

      field :swell_wave_height_max, -> { Integer }, optional: true, nullable: false

      field :swell_wave_direction_dominant, -> { Integer }, optional: true, nullable: false

      field :swell_wave_period_max, -> { Integer }, optional: true, nullable: false

      field :swell_wave_peak_period_max, -> { Integer }, optional: true, nullable: false
    end
  end
end
