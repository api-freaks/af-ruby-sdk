# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CurrentWeatherResponse < Internal::Types::Model
      field :location, -> { Apifreaks::Types::CurrentWeatherResponseLocation }, optional: false, nullable: false

      field :current, -> { Apifreaks::Types::CurrentWeatherResponseCurrent }, optional: false, nullable: false
    end
  end
end
