# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponseLoCodeDetails < Internal::Types::Model
      field :lo_code, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :longitude, -> { Float }, optional: true, nullable: false

      field :latitude, -> { Float }, optional: true, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :country_name, -> { String }, optional: true, nullable: false

      field :location_type, -> { String }, optional: true, nullable: false
    end
  end
end
