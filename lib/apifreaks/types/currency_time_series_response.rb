# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyTimeSeriesResponse < Internal::Types::Model
      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"

      field :base, -> { String }, optional: false, nullable: false

      field :historical_rates_list, -> { Internal::Types::Array[Apifreaks::Types::CurrencyTimeSeriesResponseHistoricalRatesListItem] }, optional: false, nullable: false, api_name: "historicalRatesList"
    end
  end
end
