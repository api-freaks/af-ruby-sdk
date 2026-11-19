# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Location information
    class BulkCurrentWeatherResponseBulkItemLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocationContinentCode }

      member -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocationCity }

      member -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocationZero }
    end
  end
end
