# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsV2ResponseSymbolsItemCurrency < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :symbol, -> { String }, optional: false, nullable: false
    end
  end
end
