# frozen_string_literal: true

module Apifreaks
  module Types
    class AirQualityResponseLocationCity < Internal::Types::Model
      field :location_string, -> { String }, optional: false, nullable: false

      field :country_name, -> { String }, optional: false, nullable: false

      field :state_prov, -> { String }, optional: false, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: false, nullable: false

      field :longitude, -> { Integer }, optional: false, nullable: false

      field :elevation, -> { Integer }, optional: true, nullable: false

      field :timezone, -> { String }, optional: false, nullable: false

      field :timezone_abbreviation, -> { String }, optional: false, nullable: false
    end
  end
end
