# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A single country supported by the IBAN Validation API.
    class VatSupportedCountriesResponseIbanSupportedCountriesItem < Internal::Types::Model
      field :country_code, -> { String }, optional: false, nullable: false, api_name: "countryCode"

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
