# frozen_string_literal: true

module Apifreaks
  module Types
    class GetAdminUnitDetailsResponse < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :admin_code, -> { String }, optional: false, nullable: false

      field :admin_level, -> { String }, optional: false, nullable: false

      field :admin_iso31662, -> { String }, optional: false, nullable: false, api_name: "admin_iso3166_2"

      field :country_iso31662, -> { String }, optional: false, nullable: false, api_name: "country_iso3166_2"

      field :country_name, -> { String }, optional: false, nullable: false
    end
  end
end
