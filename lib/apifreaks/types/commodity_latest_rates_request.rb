# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityLatestRatesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CommodityLatestRatesRequestFormat }, optional: true, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false

      field :updates, -> { Apifreaks::Types::CommodityLatestRatesRequestUpdates }, optional: false, nullable: false

      field :quote, -> { String }, optional: true, nullable: false
    end
  end
end
