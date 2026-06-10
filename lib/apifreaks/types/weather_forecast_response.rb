# frozen_string_literal: true

module Apifreaks
  module Types
    class WeatherForecastResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::WeatherForecastResponseLocation }, optional: true, nullable: false

      field :forecast, -> { Internal::Types::Hash[String, Apifreaks::Types::WeatherForecastResponseForecastValue] }, optional: true, nullable: false
    end
  end
end
