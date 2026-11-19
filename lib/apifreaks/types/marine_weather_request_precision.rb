# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module MarineWeatherRequestPrecision
      extend Apifreaks::Internal::Types::Enum

      DAILY = "daily"
      HOURLY = "hourly"
      MINUTELY = "minutely"
    end
  end
end
