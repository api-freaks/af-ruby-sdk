# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCountryDetailsResponse < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :iso_alpha2, -> { String }, optional: false, nullable: false, api_name: "iso_alpha_2"

      field :iso_alpha3, -> { String }, optional: false, nullable: false, api_name: "iso_alpha_3"

      field :iso_numeric, -> { Integer }, optional: false, nullable: false

      field :phone_code, -> { Integer }, optional: false, nullable: false

      field :capital, -> { String }, optional: false, nullable: false

      field :top_level_domain, -> { String }, optional: false, nullable: false

      field :native_name, -> { String }, optional: false, nullable: false

      field :region, -> { String }, optional: false, nullable: false

      field :subregion, -> { String }, optional: false, nullable: false

      field :nationality, -> { String }, optional: false, nullable: false

      field :flag_emoji, -> { String }, optional: false, nullable: false

      field :currency_code, -> { String }, optional: false, nullable: false

      field :currency_name, -> { String }, optional: false, nullable: false

      field :currency_symbol, -> { String }, optional: false, nullable: false
    end
  end
end
