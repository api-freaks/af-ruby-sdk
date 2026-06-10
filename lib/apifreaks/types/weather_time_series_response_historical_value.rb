# frozen_string_literal: true

module Apifreaks
  module Types
    class WeatherTimeSeriesResponseHistoricalValue < Internal::Types::Model
      field :daily, -> { Apifreaks::Types::WeatherTimeSeriesResponseHistoricalValueDaily }, optional: true, nullable: false

      field :hourly, -> { Internal::Types::Array[Apifreaks::Types::WeatherTimeSeriesResponseHistoricalValueHourlyItem] }, optional: true, nullable: false

      field :astronomy, -> { Apifreaks::Types::WeatherTimeSeriesResponseHistoricalValueAstronomy }, optional: true, nullable: false
    end
  end
end
