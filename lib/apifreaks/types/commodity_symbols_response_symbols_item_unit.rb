# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommoditySymbolsResponseSymbolsItemUnit < Internal::Types::Model
      field :symbol, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
