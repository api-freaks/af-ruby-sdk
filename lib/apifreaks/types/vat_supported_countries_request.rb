# frozen_string_literal: true

module Apifreaks
  module Types
    class VatSupportedCountriesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::VatSupportedCountriesRequestFormat }, optional: true, nullable: false

      field :type, -> { Apifreaks::Types::VatSupportedCountriesRequestType }, optional: true, nullable: false
    end
  end
end
