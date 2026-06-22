# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityHistoricalRatesResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :timestamp, -> { Float }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, Float] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityHistoricalRatesResponseMetadataValue] }, optional: false, nullable: false
    end
  end
end
