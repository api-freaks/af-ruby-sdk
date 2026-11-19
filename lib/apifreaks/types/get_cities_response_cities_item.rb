# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GetCitiesResponseCitiesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :latitude, -> { Float }, optional: false, nullable: false

      field :longitude, -> { Float }, optional: false, nullable: false

      field :admin_unit, -> { Apifreaks::Types::GetCitiesResponseCitiesItemAdminUnit }, optional: false, nullable: false

      field :iso_alpha2, -> { String }, optional: false, nullable: false, api_name: "iso_alpha_2"
    end
  end
end
