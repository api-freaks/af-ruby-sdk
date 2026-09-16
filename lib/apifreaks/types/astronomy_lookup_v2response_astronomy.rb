# frozen_string_literal: true

module Apifreaks
  module Types
    # Complete astronomical data for the specified location and date.
    class AstronomyLookupV2ResponseAstronomy < Internal::Types::Model
      field :time_zone, -> { String }, optional: true, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :current_time, -> { String }, optional: false, nullable: false

      field :mid_night, -> { String }, optional: false, nullable: false

      field :night_end, -> { String }, optional: false, nullable: false

      field :morning, -> { Apifreaks::Types::AstronomyLookupV2ResponseAstronomyMorning }, optional: false, nullable: false

      field :sunrise, -> { String }, optional: false, nullable: false

      field :sunset, -> { String }, optional: false, nullable: false

      field :evening, -> { Apifreaks::Types::AstronomyLookupV2ResponseAstronomyEvening }, optional: false, nullable: false

      field :night_begin, -> { String }, optional: false, nullable: false

      field :sun_status, -> { String }, optional: false, nullable: false

      field :solar_noon, -> { String }, optional: false, nullable: false

      field :day_length, -> { String }, optional: false, nullable: false

      field :sun_altitude, -> { Integer }, optional: false, nullable: false

      field :sun_distance, -> { Integer }, optional: false, nullable: false

      field :sun_azimuth, -> { Integer }, optional: false, nullable: false

      field :moon_phase, -> { String }, optional: false, nullable: false

      field :moonrise, -> { String }, optional: false, nullable: false

      field :moonset, -> { String }, optional: false, nullable: false

      field :moon_status, -> { String }, optional: false, nullable: false

      field :moon_altitude, -> { Integer }, optional: false, nullable: false

      field :moon_distance, -> { Integer }, optional: false, nullable: false

      field :moon_azimuth, -> { Integer }, optional: false, nullable: false

      field :moon_parallactic_angle, -> { Integer }, optional: false, nullable: false

      field :moon_illumination_percentage, -> { String }, optional: false, nullable: false

      field :moon_angle, -> { Integer }, optional: false, nullable: false
    end
  end
end
