# frozen_string_literal: true

module Apifreaks
  module Types
    # Morning astronomical data including twilight, blue hour, and golden hour times.
    class AstronomyLookupV2ResponseAstronomyMorning < Internal::Types::Model
      field :astronomical_twilight_begin, -> { String }, optional: false, nullable: false

      field :astronomical_twilight_end, -> { String }, optional: false, nullable: false

      field :nautical_twilight_begin, -> { String }, optional: false, nullable: false

      field :nautical_twilight_end, -> { String }, optional: false, nullable: false

      field :civil_twilight_begin, -> { String }, optional: false, nullable: false

      field :civil_twilight_end, -> { String }, optional: false, nullable: false

      field :blue_hour_begin, -> { String }, optional: false, nullable: false

      field :blue_hour_end, -> { String }, optional: false, nullable: false

      field :golden_hour_begin, -> { String }, optional: false, nullable: false

      field :golden_hour_end, -> { String }, optional: false, nullable: false
    end
  end
end
