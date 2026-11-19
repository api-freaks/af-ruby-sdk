# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkCurrentWeatherResponseBulkItem < Internal::Types::Model
      field :location, -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemLocation }, optional: false, nullable: false

      field :current, -> { Apifreaks::Types::BulkCurrentWeatherResponseBulkItemCurrent }, optional: false, nullable: false
    end
  end
end
