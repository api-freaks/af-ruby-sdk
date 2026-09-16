# frozen_string_literal: true

module Apifreaks
  module Types
    # Time zone information for the IP's location.
    class GeolocationLookupV2ResponseTimeZone < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :offset, -> { Integer }, optional: false, nullable: false

      field :offset_with_dst, -> { Integer }, optional: false, nullable: false

      field :current_time, -> { String }, optional: false, nullable: false

      field :current_time_unix, -> { Integer }, optional: false, nullable: false

      field :current_tz_abbreviation, -> { String }, optional: true, nullable: false

      field :current_tz_full_name, -> { String }, optional: true, nullable: false

      field :standard_tz_abbreviation, -> { String }, optional: true, nullable: false

      field :standard_tz_full_name, -> { String }, optional: true, nullable: false

      field :is_dst, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :dst_savings, -> { Integer }, optional: false, nullable: false

      field :dst_exists, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :dst_tz_abbreviation, -> { String }, optional: true, nullable: false

      field :dst_tz_full_name, -> { String }, optional: true, nullable: false

      field :dst_start, -> { Apifreaks::Types::GeolocationLookupV2ResponseTimeZoneDstStart }, optional: true, nullable: false

      field :dst_end, -> { Apifreaks::Types::GeolocationLookupV2ResponseTimeZoneDstEnd }, optional: true, nullable: false
    end
  end
end
