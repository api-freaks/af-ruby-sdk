# frozen_string_literal: true

module Apifreaks
  module Types
    # Historical data object of the provided date
    class HistoricalWeatherResponseHistorical < Internal::Types::Model
      field :daily, -> { Apifreaks::Types::HistoricalWeatherResponseHistoricalDaily }, optional: true, nullable: false

      field :hourly, -> { Internal::Types::Array[Apifreaks::Types::HistoricalWeatherResponseHistoricalHourlyItem] }, optional: true, nullable: false

      field :astronomy, -> { Apifreaks::Types::HistoricalWeatherResponseHistoricalAstronomy }, optional: true, nullable: false
    end
  end
end
