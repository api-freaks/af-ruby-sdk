# frozen_string_literal: true

module Apifreaks
  module Types
    class HistoricalWeatherResponseLocationContinentCode < Internal::Types::Model
      field :continent_code, -> { String }, optional: false, nullable: false

      field :continent_name, -> { String }, optional: false, nullable: false

      field :country_code2, -> { String }, optional: false, nullable: false

      field :country_code3, -> { String }, optional: false, nullable: false

      field :country_name, -> { String }, optional: false, nullable: false

      field :country_name_official, -> { String }, optional: false, nullable: false

      field :is_eu, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :state_prov, -> { String }, optional: false, nullable: false

      field :state_code, -> { String }, optional: true, nullable: false

      field :district, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :zipcode, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: false, nullable: false

      field :longitude, -> { Integer }, optional: false, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :elevation, -> { Integer }, optional: true, nullable: false

      field :timezone, -> { String }, optional: false, nullable: false

      field :timezone_abbreviation, -> { String }, optional: false, nullable: false
    end
  end
end
