# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GetSupportedFlagsResponseSupportedCountriesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :iso2, -> { String }, optional: false, nullable: false

      field :iso3, -> { String }, optional: false, nullable: false
    end
  end
end
