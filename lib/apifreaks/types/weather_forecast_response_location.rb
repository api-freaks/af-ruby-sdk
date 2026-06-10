# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class WeatherForecastResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WeatherForecastResponseLocationZero }

      member -> { Apifreaks::Types::WeatherForecastResponseLocationContinentCode }

      member -> { Apifreaks::Types::WeatherForecastResponseLocationCity }
    end
  end
end
