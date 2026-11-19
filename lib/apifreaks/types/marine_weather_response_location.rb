# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class MarineWeatherResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::MarineWeatherResponseLocationContinentCode }

      member -> { Apifreaks::Types::MarineWeatherResponseLocationCity }

      member -> { Apifreaks::Types::MarineWeatherResponseLocationZero }
    end
  end
end
