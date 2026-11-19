# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module WeatherForecastRequestPrecision
      extend Apifreaks::Internal::Types::Enum

      DAILY = "daily"
      HOURLY = "hourly"
      MINUTELY = "minutely"
    end
  end
end
