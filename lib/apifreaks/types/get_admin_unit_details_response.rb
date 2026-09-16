# frozen_string_literal: true

module Apifreaks
  module Types
    class GetAdminUnitDetailsResponse < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :admin_code, -> { String }, optional: false, nullable: false

      field :admin_level, -> { String }, optional: false, nullable: false

      field :iso_alpha2, -> { String }, optional: false, nullable: false, api_name: "iso_alpha_2"

      field :country_name, -> { String }, optional: false, nullable: false
    end
  end
end
