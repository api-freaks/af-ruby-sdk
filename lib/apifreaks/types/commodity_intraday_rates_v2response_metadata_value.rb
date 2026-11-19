# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Unit and currency of the prices for one commodity.
    class CommodityIntradayRatesV2ResponseMetadataValue < Internal::Types::Model
      field :unit, -> { String }, optional: true, nullable: false

      field :quote, -> { String }, optional: true, nullable: false
    end
  end
end
