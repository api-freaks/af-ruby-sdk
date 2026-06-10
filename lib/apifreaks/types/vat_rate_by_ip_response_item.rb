# frozen_string_literal: true

module Apifreaks
  module Types
    class VatRateByIPResponseItem < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :standard_rate, -> { Integer }, optional: false, nullable: false

      field :reduced_rate, -> { Internal::Types::Array[Integer] }, optional: false, nullable: false

      field :super_reduced_rate, -> { Internal::Types::Array[Integer] }, optional: true, nullable: false

      field :parking_rate, -> { Integer }, optional: true, nullable: false

      field :categories, -> { Internal::Types::Hash[String, Integer] }, optional: false, nullable: false
    end
  end
end
