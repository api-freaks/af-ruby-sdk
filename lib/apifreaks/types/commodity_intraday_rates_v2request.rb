# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityIntradayRatesV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :symbols, -> { String }, optional: false, nullable: false

      field :interval, -> { Apifreaks::Types::CommodityIntradayRatesV2RequestInterval }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :start_time, -> { String }, optional: true, nullable: false, api_name: "startTime"

      field :metadata, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
