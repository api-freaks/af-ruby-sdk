# frozen_string_literal: true

module Apifreaks
  module Types
    class HistoricalWeatherResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::HistoricalWeatherResponseLocation }, optional: true, nullable: false

      field :historical, -> { Apifreaks::Types::HistoricalWeatherResponseHistorical }, optional: true, nullable: false
    end
  end
end
