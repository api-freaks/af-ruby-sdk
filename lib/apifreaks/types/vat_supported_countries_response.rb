# frozen_string_literal: true

module Apifreaks
  module Types
    class VatSupportedCountriesResponse < Internal::Types::Model
      field :vat_supported_countries_and_states, -> { Internal::Types::Array[Apifreaks::Types::VatSupportedCountriesResponseVatSupportedCountriesAndStatesItem] }, optional: true, nullable: false, api_name: "VAT_Supported_Countries_And_States"
    end
  end
end
