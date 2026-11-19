# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module WeatherTimeSeriesRequestPrecision
      extend Apifreaks::Internal::Types::Enum

      DAILY = "daily"
      HOURLY = "hourly"
    end
  end
end
