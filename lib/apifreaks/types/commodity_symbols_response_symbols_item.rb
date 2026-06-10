# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsResponseSymbolsItem < Internal::Types::Model
      field :symbol, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :category, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :update_interval, -> { Apifreaks::Types::CommoditySymbolsResponseSymbolsItemUpdateInterval }, optional: false, nullable: false, api_name: "updateInterval"

      field :currency, -> { Apifreaks::Types::CommoditySymbolsResponseSymbolsItemCurrency }, optional: false, nullable: false

      field :unit, -> { Apifreaks::Types::CommoditySymbolsResponseSymbolsItemUnit }, optional: false, nullable: false
    end
  end
end
