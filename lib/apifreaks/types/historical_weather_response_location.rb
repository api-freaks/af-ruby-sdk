# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class HistoricalWeatherResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::HistoricalWeatherResponseLocationContinentCode }

      member -> { Apifreaks::Types::HistoricalWeatherResponseLocationCity }

      member -> { Apifreaks::Types::HistoricalWeatherResponseLocationZero }
    end
  end
end
