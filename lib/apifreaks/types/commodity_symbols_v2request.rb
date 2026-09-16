# frozen_string_literal: true

module Apifreaks
  module Types
    class CommoditySymbolsV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CommoditySymbolsV2RequestFormat }, optional: true, nullable: false
    end
  end
end
