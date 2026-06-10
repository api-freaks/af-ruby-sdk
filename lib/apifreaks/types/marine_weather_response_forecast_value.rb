# frozen_string_literal: true

module Apifreaks
  module Types
    class MarineWeatherResponseForecastValue < Internal::Types::Model
      field :daily, -> { Apifreaks::Types::MarineWeatherResponseForecastValueDaily }, optional: true, nullable: false

      field :hourly, -> { Internal::Types::Array[Apifreaks::Types::MarineWeatherResponseForecastValueHourlyItem] }, optional: true, nullable: false

      field :minutely, -> { Internal::Types::Array[Apifreaks::Types::MarineWeatherResponseForecastValueMinutelyItem] }, optional: true, nullable: false
    end
  end
end
