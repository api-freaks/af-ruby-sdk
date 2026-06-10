# frozen_string_literal: true

module Apifreaks
  module Types
    class GeocoderReverseResponse < Internal::Types::Model
      field :lat, -> { Integer }, optional: false, nullable: false

      field :lon, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :category, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :poi, -> { Internal::Types::Array[Apifreaks::Types::GeocoderReverseResponsePoiItem] }, optional: true, nullable: false

      field :street, -> { String }, optional: true, nullable: false

      field :area, -> { String }, optional: true, nullable: false

      field :postcode, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :county, -> { String }, optional: true, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :full_address, -> { String }, optional: false, nullable: false

      field :bounding_box, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
