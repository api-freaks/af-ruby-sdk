# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkVatRateByCountryResponseCountriesItem < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :currency, -> { String }, optional: true, nullable: false

      field :standard_rate, -> { Integer }, optional: true, nullable: false

      field :reduced_rate, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

      field :super_reduced_rate, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

      field :parking_rate, -> { Integer }, optional: true, nullable: false

      field :categories, -> { Internal::Types::Hash[String, Integer] }, optional: true, nullable: false
    end
  end
end
