# frozen_string_literal: true

module Apifreaks
  module Types
    class AirQualityResponseForecastValue < Internal::Types::Model
      field :hourly, -> { Internal::Types::Array[Apifreaks::Types::AirQualityResponseForecastValueHourlyItem] }, optional: true, nullable: false
    end
  end
end
