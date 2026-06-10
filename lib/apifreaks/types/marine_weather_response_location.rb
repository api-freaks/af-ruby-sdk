# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class MarineWeatherResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::MarineWeatherResponseLocationZero }

      member -> { Apifreaks::Types::MarineWeatherResponseLocationContinentCode }

      member -> { Apifreaks::Types::MarineWeatherResponseLocationCity }
    end
  end
end
