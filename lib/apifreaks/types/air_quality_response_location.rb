# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class AirQualityResponseLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::AirQualityResponseLocationZero }

      member -> { Apifreaks::Types::AirQualityResponseLocationContinentCode }

      member -> { Apifreaks::Types::AirQualityResponseLocationCity }
    end
  end
end
