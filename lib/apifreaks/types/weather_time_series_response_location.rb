# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class WeatherTimeSeriesResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WeatherTimeSeriesResponseLocationContinentCode }

      member -> { Apifreaks::Types::WeatherTimeSeriesResponseLocationCity }

      member -> { Apifreaks::Types::WeatherTimeSeriesResponseLocationZero }
    end
  end
end
