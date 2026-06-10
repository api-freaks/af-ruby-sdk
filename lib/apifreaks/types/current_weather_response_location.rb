# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class CurrentWeatherResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::CurrentWeatherResponseLocationZero }

      member -> { Apifreaks::Types::CurrentWeatherResponseLocationContinentCode }

      member -> { Apifreaks::Types::CurrentWeatherResponseLocationCity }
    end
  end
end
