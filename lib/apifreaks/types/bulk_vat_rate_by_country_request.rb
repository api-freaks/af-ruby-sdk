# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkVatRateByCountryRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkVatRateByCountryRequestFormat }, optional: true, nullable: false

      field :countries, -> { Internal::Types::Array[Apifreaks::Types::BulkVatRateByCountryRequestCountriesItem] }, optional: false, nullable: false
    end
  end
end
