# frozen_string_literal: true

module Apifreaks
  module Types
    class MarineWeatherResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::MarineWeatherResponseLocation }, optional: true, nullable: false

      field :current, -> { Apifreaks::Types::MarineWeatherResponseCurrent }, optional: true, nullable: false

      field :forecast, -> { Internal::Types::Hash[String, Apifreaks::Types::MarineWeatherResponseForecastValue] }, optional: true, nullable: false
    end
  end
end
