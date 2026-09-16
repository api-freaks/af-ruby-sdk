# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsV2Response < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :symbols, -> { Internal::Types::Array[Apifreaks::Types::CommoditySymbolsV2ResponseSymbolsItem] }, optional: false, nullable: false
    end
  end
end
