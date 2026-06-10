# frozen_string_literal: true

module Apifreaks
  module Types
    # Daily flood forecast data for the date.
    class FloodForecastResponseForecastValueDaily < Internal::Types::Model
      field :timestamp, -> { String }, optional: true, nullable: false

      field :river_discharge, -> { Integer }, optional: true, nullable: false

      field :river_discharge_mean, -> { Integer }, optional: true, nullable: false

      field :river_discharge_median, -> { Integer }, optional: true, nullable: false

      field :river_discharge_max, -> { Integer }, optional: true, nullable: false

      field :river_discharge_min, -> { Integer }, optional: true, nullable: false

      field :river_discharge_p25, -> { Integer }, optional: true, nullable: false

      field :river_discharge_p75, -> { Integer }, optional: true, nullable: false
    end
  end
end
