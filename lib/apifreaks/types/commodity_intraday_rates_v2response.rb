# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Intraday response containing the prices of the requested symbol keyed by UTC timestamp.
    class CommodityIntradayRatesV2Response < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :symbol, -> { String }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :interval, -> { Apifreaks::Types::CommodityIntradayRatesV2ResponseInterval }, optional: false, nullable: false

      field :start_time, -> { String }, optional: false, nullable: false, api_name: "startTime"

      field :count, -> { Integer }, optional: false, nullable: false

      field :next_start_time, -> { String }, optional: false, nullable: true, api_name: "nextStartTime"

      field :rates, -> { Internal::Types::Hash[String, Float] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityIntradayRatesV2ResponseMetadataValue] }, optional: true, nullable: false

      field :unresolved, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityIntradayRatesV2ResponseUnresolvedValue] }, optional: true, nullable: false
    end
  end
end
