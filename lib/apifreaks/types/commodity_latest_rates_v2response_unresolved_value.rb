# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityLatestRatesV2ResponseUnresolvedValue < Internal::Types::Model
      field :message, -> { String }, optional: true, nullable: false

      field :suggestions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
