# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsResponseSymbolsItemUnit < Internal::Types::Model
      field :symbol, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
