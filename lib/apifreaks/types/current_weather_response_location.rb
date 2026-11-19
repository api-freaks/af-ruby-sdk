# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class CurrentWeatherResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::CurrentWeatherResponseLocationContinentCode }

      member -> { Apifreaks::Types::CurrentWeatherResponseLocationCity }

      member -> { Apifreaks::Types::CurrentWeatherResponseLocationZero }
    end
  end
end
