# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityLatestRatesV2Response < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :timestamp, -> { Integer }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, Float] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityLatestRatesV2ResponseMetadataValue] }, optional: false, nullable: false

      field :warning, -> { String }, optional: true, nullable: false

      field :unresolved, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityLatestRatesV2ResponseUnresolvedValue] }, optional: true, nullable: false
    end
  end
end
