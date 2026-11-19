# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class FloodForecastResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::FloodForecastResponseLocationContinentCode }

      member -> { Apifreaks::Types::FloodForecastResponseLocationCity }

      member -> { Apifreaks::Types::FloodForecastResponseLocationZero }
    end
  end
end
