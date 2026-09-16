# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityHistoricalRatesV2Response < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityHistoricalRatesV2ResponseRatesValue] }, optional: false, nullable: false
    end
  end
end
