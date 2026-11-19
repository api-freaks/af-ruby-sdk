# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class VatSupportedCountriesResponseVatSupportedCountriesAndStatesItemValue < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :states, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
    end
  end
end
