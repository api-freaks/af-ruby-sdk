# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsV2ResponseSymbolsItem < Internal::Types::Model
      field :symbol, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :category, -> { String }, optional: false, nullable: false

      field :status, -> { Apifreaks::Types::CommoditySymbolsV2ResponseSymbolsItemStatus }, optional: false, nullable: false

      field :update_interval, -> { Apifreaks::Types::CommoditySymbolsV2ResponseSymbolsItemUpdateInterval }, optional: false, nullable: false, api_name: "updateInterval"

      field :exchange, -> { String }, optional: true, nullable: false

      field :deprecation_date, -> { String }, optional: true, nullable: false, api_name: "deprecationDate"

      field :currency, -> { Apifreaks::Types::CommoditySymbolsV2ResponseSymbolsItemCurrency }, optional: false, nullable: false

      field :unit, -> { Apifreaks::Types::CommoditySymbolsV2ResponseSymbolsItemUnit }, optional: false, nullable: false
    end
  end
end
