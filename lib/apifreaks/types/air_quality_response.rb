# frozen_string_literal: true

module Apifreaks
  module Types
    class AirQualityResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::AirQualityResponseLocation }, optional: true, nullable: false

      field :current, -> { Apifreaks::Types::AirQualityResponseCurrent }, optional: true, nullable: false

      field :forecast, -> { Internal::Types::Hash[String, Apifreaks::Types::AirQualityResponseForecastValue] }, optional: true, nullable: false
    end
  end
end
