# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyHistoricalRatesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencyHistoricalRatesRequestFormat }, optional: true, nullable: false

      field :base, -> { String }, optional: true, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false

      field :date, -> { String }, optional: false, nullable: false
    end
  end
end
