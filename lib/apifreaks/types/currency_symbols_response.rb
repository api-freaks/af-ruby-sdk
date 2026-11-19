# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CurrencySymbolsResponse < Internal::Types::Model
      field :currency_symbols, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false, api_name: "currencySymbols"
    end
  end
end
