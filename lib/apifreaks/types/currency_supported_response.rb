# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencySupportedResponse < Internal::Types::Model
      field :supported_currencies_map, -> { Internal::Types::Hash[String, Apifreaks::Types::CurrencySupportedResponseSupportedCurrenciesMapValue] }, optional: false, nullable: false, api_name: "supportedCurrenciesMap"
    end
  end
end
