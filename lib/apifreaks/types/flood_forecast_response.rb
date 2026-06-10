# frozen_string_literal: true

module Apifreaks
  module Types
    class FloodForecastResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::FloodForecastResponseLocation }, optional: true, nullable: false

      field :forecast, -> { Internal::Types::Hash[String, Apifreaks::Types::FloodForecastResponseForecastValue] }, optional: true, nullable: false
    end
  end
end
