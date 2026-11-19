# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class FloodForecastResponseForecastValue < Internal::Types::Model
      field :daily, -> { Apifreaks::Types::FloodForecastResponseForecastValueDaily }, optional: true, nullable: false
    end
  end
end
