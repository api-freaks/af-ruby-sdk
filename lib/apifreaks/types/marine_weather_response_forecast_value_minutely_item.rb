# frozen_string_literal: true

module Apifreaks
  module Types
    class MarineWeatherResponseForecastValueMinutelyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :ocean_current_velocity, -> { Integer }, optional: true, nullable: false

      field :ocean_current_direction, -> { Integer }, optional: true, nullable: false

      field :sea_level_height_msl, -> { Integer }, optional: true, nullable: false
    end
  end
end
