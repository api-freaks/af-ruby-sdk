# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityHistoricalRatesResponseMetadataValue < Internal::Types::Model
      field :unit, -> { String }, optional: false, nullable: false

      field :quote, -> { String }, optional: false, nullable: false
    end
  end
end
