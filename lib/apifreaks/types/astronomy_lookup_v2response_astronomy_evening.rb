# frozen_string_literal: true

module Apifreaks
  module Types
    # Evening astronomical data including golden hour, blue hour, and twilight times.
    class AstronomyLookupV2ResponseAstronomyEvening < Internal::Types::Model
      field :golden_hour_begin, -> { String }, optional: false, nullable: false

      field :golden_hour_end, -> { String }, optional: false, nullable: false

      field :blue_hour_begin, -> { String }, optional: false, nullable: false

      field :blue_hour_end, -> { String }, optional: false, nullable: false

      field :civil_twilight_begin, -> { String }, optional: false, nullable: false

      field :civil_twilight_end, -> { String }, optional: false, nullable: false

      field :nautical_twilight_begin, -> { String }, optional: false, nullable: false

      field :nautical_twilight_end, -> { String }, optional: false, nullable: false

      field :astronomical_twilight_begin, -> { String }, optional: false, nullable: false

      field :astronomical_twilight_end, -> { String }, optional: false, nullable: false
    end
  end
end
