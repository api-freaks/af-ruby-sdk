# frozen_string_literal: true

module Apifreaks
  module Types
    class VatSupportedCountriesResponseVatSupportedCountriesAndStatesItem < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :states, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
