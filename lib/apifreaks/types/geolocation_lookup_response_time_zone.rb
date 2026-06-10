# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseTimeZone < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :offset, -> { Integer }, optional: true, nullable: false

      field :offset_with_dst, -> { Integer }, optional: true, nullable: false

      field :current_time, -> { String }, optional: true, nullable: false

      field :current_time_unix, -> { Integer }, optional: true, nullable: false

      field :current_tz_abbreviation, -> { String }, optional: true, nullable: false

      field :current_tz_full_name, -> { String }, optional: true, nullable: false

      field :standard_tz_abbreviation, -> { String }, optional: true, nullable: false

      field :standard_tz_full_name, -> { String }, optional: true, nullable: false

      field :is_dst, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :dst_savings, -> { Integer }, optional: true, nullable: false

      field :dst_exists, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :dst_tz_abbreviation, -> { String }, optional: true, nullable: false

      field :dst_tz_full_name, -> { String }, optional: true, nullable: false

      field :dst_start, -> { Apifreaks::Types::GeolocationLookupResponseTimeZoneDstStart }, optional: true, nullable: false

      field :dst_end, -> { Apifreaks::Types::GeolocationLookupResponseTimeZoneDstEnd }, optional: true, nullable: false
    end
  end
end
