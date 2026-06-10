# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityHistoricalRatesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CommodityHistoricalRatesRequestFormat }, optional: true, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false
    end
  end
end
