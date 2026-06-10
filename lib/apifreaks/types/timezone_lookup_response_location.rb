# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponseLocation < Internal::Types::Model
      field :location_string, -> { String }, optional: true, nullable: false

      field :country_name, -> { String }, optional: true, nullable: false

      field :state_prov, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :latitude, -> { String }, optional: true, nullable: false

      field :longitude, -> { String }, optional: true, nullable: false

      field :continent_code, -> { String }, optional: true, nullable: false

      field :continent_name, -> { String }, optional: true, nullable: false

      field :country_code2, -> { String }, optional: true, nullable: false

      field :country_code3, -> { String }, optional: true, nullable: false

      field :country_name_official, -> { String }, optional: true, nullable: false

      field :is_eu, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :district, -> { String }, optional: true, nullable: false

      field :zipcode, -> { String }, optional: true, nullable: false
    end
  end
end
