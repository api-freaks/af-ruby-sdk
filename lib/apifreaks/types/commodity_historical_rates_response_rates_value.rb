# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityHistoricalRatesResponseRatesValue < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :open, -> { Float }, optional: false, nullable: false

      field :high, -> { Float }, optional: false, nullable: false

      field :low, -> { Float }, optional: false, nullable: false

      field :close, -> { Float }, optional: false, nullable: false
    end
  end
end
