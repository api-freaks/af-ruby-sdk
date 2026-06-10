# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :symbols, -> { Internal::Types::Array[Apifreaks::Types::CommoditySymbolsResponseSymbolsItem] }, optional: false, nullable: false
    end
  end
end
