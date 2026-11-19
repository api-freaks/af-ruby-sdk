# frozen_string_literal: true

require_relative "../../apifreaks"

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

      field :description, -> { String }, optional: true, nullable: false

      field :exchange, -> { String }, optional: true, nullable: false

      field :deprecation_date, -> { String }, optional: true, nullable: false, api_name: "deprecationDate"

      field :contract, -> { String }, optional: true, nullable: false

      field :delivery_month, -> { String }, optional: true, nullable: false, api_name: "deliveryMonth"

      field :expires_at, -> { String }, optional: true, nullable: false, api_name: "expiresAt"

      field :underlying, -> { String }, optional: true, nullable: false
    end
  end
end
