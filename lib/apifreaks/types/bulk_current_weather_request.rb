# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkCurrentWeatherRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkCurrentWeatherRequestFormat }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false

      field :locations, -> { Internal::Types::Array[Apifreaks::Types::BulkCurrentWeatherRequestLocationsItem] }, optional: false, nullable: false
    end
  end
end
