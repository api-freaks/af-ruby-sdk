# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A single country supported by the SWIFT/BIC Code Lookup and Finder APIs.
    class VatSupportedCountriesResponseSwiftSupportedCountriesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :country_code, -> { String }, optional: false, nullable: false, api_name: "countryCode"
    end
  end
end
