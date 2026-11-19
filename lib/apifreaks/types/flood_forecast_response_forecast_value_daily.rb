# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Daily flood forecast data for the date.
    class FloodForecastResponseForecastValueDaily < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :river_discharge, -> { Float }, optional: true, nullable: false

      field :river_discharge_mean, -> { Float }, optional: true, nullable: false

      field :river_discharge_median, -> { Float }, optional: true, nullable: false

      field :river_discharge_max, -> { Float }, optional: true, nullable: false

      field :river_discharge_min, -> { Float }, optional: true, nullable: false

      field :river_discharge_p25, -> { Float }, optional: true, nullable: false

      field :river_discharge_p75, -> { Float }, optional: true, nullable: false
    end
  end
end
