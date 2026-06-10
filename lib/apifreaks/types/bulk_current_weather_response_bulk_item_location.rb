# frozen_string_literal: true

module Apifreaks
  module Types
    # Location information
    class BulkCurrentWeatherResponseBulkItemLocation < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocationZero }

      member -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocationContinentCode }

      member -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocationCity }
    end
  end
end
