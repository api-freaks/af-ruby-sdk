# frozen_string_literal: true

module Apifreaks
  module Types
    class VatRateByCountryRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::VatRateByCountryRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: true, nullable: false
    end
  end
end
