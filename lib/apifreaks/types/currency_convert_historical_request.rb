# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyConvertHistoricalRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencyConvertHistoricalRequestFormat }, optional: true, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :amount, -> { Integer }, optional: true, nullable: false

      field :date, -> { String }, optional: false, nullable: false
    end
  end
end
