# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponseLoCodeDetails < Internal::Types::Model
      field :lo_code, -> { String }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :longitude, -> { String }, optional: false, nullable: false

      field :latitude, -> { String }, optional: false, nullable: false

      field :state_code, -> { String }, optional: false, nullable: false

      field :country_code, -> { String }, optional: false, nullable: false

      field :country_name, -> { String }, optional: false, nullable: false

      field :location_type, -> { String }, optional: false, nullable: false
    end
  end
end
