# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityLatestRatesResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :timestamp, -> { Integer }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, Integer] }, optional: false, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityLatestRatesResponseMetadataValue] }, optional: false, nullable: false
    end
  end
end
