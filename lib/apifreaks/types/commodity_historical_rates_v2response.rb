# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityHistoricalRatesV2Response < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityHistoricalRatesV2ResponseRatesValue] }, optional: false, nullable: false

      field :unresolved, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityHistoricalRatesV2ResponseUnresolvedValue] }, optional: true, nullable: false
    end
  end
end
