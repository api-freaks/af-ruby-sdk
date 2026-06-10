# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyLatestRatesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencyLatestRatesRequestFormat }, optional: true, nullable: false

      field :base, -> { String }, optional: true, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false

      field :updates, -> { Apifreaks::Types::CurrencyLatestRatesRequestUpdates }, optional: true, nullable: false
    end
  end
end
