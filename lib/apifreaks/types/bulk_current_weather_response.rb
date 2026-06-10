# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkCurrentWeatherResponse < Internal::Types::Model
      field :bulk, -> { Internal::Types::Array[Apifreaks::Types::BulkCurrentWeatherResponseBulkItem] }, optional: false, nullable: false
    end
  end
end
