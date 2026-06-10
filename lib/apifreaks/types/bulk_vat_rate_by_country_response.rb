# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkVatRateByCountryResponse < Internal::Types::Model
      field :countries, -> { Internal::Types::Array[Apifreaks::Types::BulkVatRateByCountryResponseCountriesItem] }, optional: false, nullable: false
    end
  end
end
