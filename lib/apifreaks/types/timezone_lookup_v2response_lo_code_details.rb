# frozen_string_literal: true

module Apifreaks
  module Types
    # UN/LOCODE location details, present when queried by LO code.
    class TimezoneLookupV2ResponseLoCodeDetails < Internal::Types::Model
      field :lo_code, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :country_name, -> { String }, optional: true, nullable: false

      field :location_type, -> { String }, optional: true, nullable: false

      field :latitude, -> { String }, optional: true, nullable: false

      field :longitude, -> { String }, optional: true, nullable: false
    end
  end
end
