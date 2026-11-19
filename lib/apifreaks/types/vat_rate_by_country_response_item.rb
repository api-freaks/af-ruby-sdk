# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class VatRateByCountryResponseItem < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :currency, -> { String }, optional: false, nullable: false

      field :standard_rate, -> { Float }, optional: false, nullable: false

      field :reduced_rate, -> { Internal::Types::Array[Float] }, optional: true, nullable: false

      field :super_reduced_rate, -> { Internal::Types::Array[Float] }, optional: true, nullable: false

      field :parking_rate, -> { Float }, optional: true, nullable: false

      field :categories, -> { Internal::Types::Hash[String, Float] }, optional: true, nullable: false
    end
  end
end
