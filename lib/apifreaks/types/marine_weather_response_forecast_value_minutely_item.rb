# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class MarineWeatherResponseForecastValueMinutelyItem < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :ocean_current_velocity, -> { Float }, optional: true, nullable: false

      field :ocean_current_direction, -> { Integer }, optional: true, nullable: false

      field :sea_level_height_msl, -> { Float }, optional: true, nullable: false
    end
  end
end
