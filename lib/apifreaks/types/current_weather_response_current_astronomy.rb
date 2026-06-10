# frozen_string_literal: true

module Apifreaks
  module Types
    # Astronomical information including sunrise, sunset, and moon phases for the current date.
    class CurrentWeatherResponseCurrentAstronomy < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :mid_night, -> { String }, optional: false, nullable: false

      field :night_end, -> { String }, optional: false, nullable: false

      field :sunrise, -> { String }, optional: false, nullable: false

      field :solar_noon, -> { String }, optional: false, nullable: false

      field :sunset, -> { String }, optional: false, nullable: false

      field :night_begin, -> { String }, optional: false, nullable: false

      field :day_length, -> { String }, optional: false, nullable: false

      field :sun_status, -> { String }, optional: false, nullable: false

      field :moon_phase, -> { String }, optional: false, nullable: false

      field :moonrise, -> { String }, optional: false, nullable: false

      field :moonset, -> { String }, optional: false, nullable: false

      field :moon_status, -> { String }, optional: false, nullable: false
    end
  end
end
