# frozen_string_literal: true

module Apifreaks
  module Types
    class WeatherForecastResponseForecastValue < Internal::Types::Model
      field :daily, -> { Apifreaks::Types::WeatherForecastResponseForecastValueDaily }, optional: true, nullable: false

      field :hourly, -> { Internal::Types::Array[Apifreaks::Types::WeatherForecastResponseForecastValueHourlyItem] }, optional: true, nullable: false

      field :minutely, -> { Internal::Types::Array[Apifreaks::Types::WeatherForecastResponseForecastValueMinutelyItem] }, optional: true, nullable: false

      field :astronomy, -> { Apifreaks::Types::WeatherForecastResponseForecastValueAstronomy }, optional: true, nullable: false
    end
  end
end
