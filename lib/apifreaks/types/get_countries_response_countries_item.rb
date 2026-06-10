# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCountriesResponseCountriesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :iso_alpha2, -> { String }, optional: false, nullable: false, api_name: "iso_alpha_2"

      field :iso_alpha3, -> { String }, optional: false, nullable: false, api_name: "iso_alpha_3"

      field :iso_numeric, -> { Integer }, optional: false, nullable: false

      field :capital, -> { String }, optional: false, nullable: false

      field :region, -> { String }, optional: false, nullable: false

      field :subregion, -> { String }, optional: false, nullable: false
    end
  end
end
