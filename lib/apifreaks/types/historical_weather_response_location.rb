# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class HistoricalWeatherResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::HistoricalWeatherResponseLocationZero }

      member -> { Apifreaks::Types::HistoricalWeatherResponseLocationContinentCode }

      member -> { Apifreaks::Types::HistoricalWeatherResponseLocationCity }
    end
  end
end
