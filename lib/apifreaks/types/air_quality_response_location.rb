# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class AirQualityResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::AirQualityResponseLocationContinentCode }

      member -> { Apifreaks::Types::AirQualityResponseLocationCity }

      member -> { Apifreaks::Types::AirQualityResponseLocationZero }
    end
  end
end
