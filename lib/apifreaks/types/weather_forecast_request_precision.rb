# frozen_string_literal: true

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
