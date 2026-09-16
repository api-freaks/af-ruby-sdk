# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityHistoricalRatesV2ResponseRatesValue < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :open, -> { Integer }, optional: false, nullable: false

      field :high, -> { Integer }, optional: false, nullable: false

      field :low, -> { Integer }, optional: false, nullable: false

      field :close, -> { Integer }, optional: false, nullable: false
    end
  end
end
