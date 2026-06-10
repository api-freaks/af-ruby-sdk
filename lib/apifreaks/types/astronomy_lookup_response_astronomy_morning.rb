# frozen_string_literal: true

module Apifreaks
  module Types
    class AstronomyLookupResponseAstronomyMorning < Internal::Types::Model
      field :astronomical_twilight_begin, -> { String }, optional: true, nullable: false

      field :astronomical_twilight_end, -> { String }, optional: true, nullable: false

      field :nautical_twilight_begin, -> { String }, optional: true, nullable: false

      field :nautical_twilight_end, -> { String }, optional: true, nullable: false

      field :civil_twilight_begin, -> { String }, optional: true, nullable: false

      field :civil_twilight_end, -> { String }, optional: true, nullable: false

      field :blue_hour_begin, -> { String }, optional: true, nullable: false

      field :blue_hour_end, -> { String }, optional: true, nullable: false

      field :golden_hour_begin, -> { String }, optional: true, nullable: false

      field :golden_hour_end, -> { String }, optional: true, nullable: false
    end
  end
end
