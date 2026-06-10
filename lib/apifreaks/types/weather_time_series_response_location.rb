# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class WeatherTimeSeriesResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WeatherTimeSeriesResponseLocationZero }

      member -> { Apifreaks::Types::WeatherTimeSeriesResponseLocationContinentCode }

      member -> { Apifreaks::Types::WeatherTimeSeriesResponseLocationCity }
    end
  end
end
