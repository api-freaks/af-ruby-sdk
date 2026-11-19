# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CurrencyTimeSeriesResponseHistoricalRatesListItem < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :rates, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
