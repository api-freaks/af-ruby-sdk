# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class VatSupportedCountriesResponse < Internal::Types::Model
      field :vat_supported_countries_and_states, -> { Internal::Types::Array[Internal::Types::Hash[String, Apifreaks::Types::VatSupportedCountriesResponseVatSupportedCountriesAndStatesItemValue]] }, optional: true, nullable: false, api_name: "VAT_Supported_Countries_And_States"

      field :iban_supported_countries, -> { Internal::Types::Array[Apifreaks::Types::VatSupportedCountriesResponseIbanSupportedCountriesItem] }, optional: true, nullable: false, api_name: "IBAN_Supported_Countries"

      field :swift_supported_countries, -> { Internal::Types::Array[Apifreaks::Types::VatSupportedCountriesResponseSwiftSupportedCountriesItem] }, optional: true, nullable: false, api_name: "SWIFT_Supported_Countries"
    end
  end
end
