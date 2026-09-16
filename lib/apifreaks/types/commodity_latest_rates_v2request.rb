# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityLatestRatesV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CommodityLatestRatesV2RequestFormat }, optional: true, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false

      field :quote, -> { String }, optional: true, nullable: false
    end
  end
end
