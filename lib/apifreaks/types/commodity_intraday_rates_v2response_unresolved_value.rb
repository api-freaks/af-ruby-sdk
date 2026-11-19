# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityIntradayRatesV2ResponseUnresolvedValue < Internal::Types::Model
      field :message, -> { String }, optional: true, nullable: false

      field :resolved_to, -> { String }, optional: true, nullable: false, api_name: "resolvedTo"

      field :suggestions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
