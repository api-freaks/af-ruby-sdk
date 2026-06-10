# frozen_string_literal: true

module Apifreaks
  module Types
    class WeatherTimeSeriesResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::WeatherTimeSeriesResponseLocation }, optional: true, nullable: false

      field :historical, -> { Internal::Types::Hash[String, Apifreaks::Types::WeatherTimeSeriesResponseHistoricalValue] }, optional: true, nullable: false
    end
  end
end
