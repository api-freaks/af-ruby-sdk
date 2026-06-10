# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityTimeSeriesResponseRatesValueValue < Internal::Types::Model
      field :open, -> { Integer }, optional: false, nullable: false

      field :high, -> { Integer }, optional: false, nullable: false

      field :low, -> { Integer }, optional: false, nullable: false

      field :close, -> { Integer }, optional: false, nullable: false
    end
  end
end
