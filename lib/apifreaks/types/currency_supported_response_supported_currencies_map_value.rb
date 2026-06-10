# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencySupportedResponseSupportedCurrenciesMapValue < Internal::Types::Model
      field :currency_code, -> { String }, optional: false, nullable: false, api_name: "currencyCode"

      field :currency_name, -> { String }, optional: false, nullable: false, api_name: "currencyName"

      field :country_code, -> { String }, optional: false, nullable: false, api_name: "countryCode"

      field :country_name, -> { String }, optional: false, nullable: false, api_name: "countryName"

      field :status, -> { Apifreaks::Types::CurrencySupportedResponseSupportedCurrenciesMapValueStatus }, optional: false, nullable: false

      field :available_from, -> { String }, optional: false, nullable: false, api_name: "availableFrom"

      field :available_until, -> { String }, optional: false, nullable: false, api_name: "availableUntil"

      field :icon, -> { String }, optional: false, nullable: false
    end
  end
end
