# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class WeatherForecastResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WeatherForecastResponseLocationContinentCode }

      member -> { Apifreaks::Types::WeatherForecastResponseLocationCity }

      member -> { Apifreaks::Types::WeatherForecastResponseLocationZero }
    end
  end
end
