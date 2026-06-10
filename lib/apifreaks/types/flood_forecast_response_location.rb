# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class FloodForecastResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::FloodForecastResponseLocationZero }

      member -> { Apifreaks::Types::FloodForecastResponseLocationContinentCode }

      member -> { Apifreaks::Types::FloodForecastResponseLocationCity }
    end
  end
end
