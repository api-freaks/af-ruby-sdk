# frozen_string_literal: true

module Apifreaks
  module Types
    # Timezone lookup result. time_zone is always present. Exactly which other object accompanies it depends on the
    # lookup mode: tz name and lat/long coordinates return time_zone only (no location, no ip); location address returns
    # a basic location object; ip param or client-IP fallback returns a rich location object plus top-level ip;
    # iata_code/icao_code returns airport_details instead of location; lo_code returns lo_code_details instead of
    # location.
    class TimezoneLookupV2Response < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :time_zone, -> { Apifreaks::Types::TimezoneLookupV2ResponseTimeZone }, optional: false, nullable: false

      field :location, -> { Apifreaks::Types::TimezoneLookupV2ResponseLocation }, optional: true, nullable: false

      field :airport_details, -> { Apifreaks::Types::TimezoneLookupV2ResponseAirportDetails }, optional: true, nullable: false

      field :lo_code_details, -> { Apifreaks::Types::TimezoneLookupV2ResponseLoCodeDetails }, optional: true, nullable: false
    end
  end
end
