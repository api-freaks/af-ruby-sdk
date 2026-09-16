# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponse < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::TimezoneLookupResponseLocation }, optional: true, nullable: false

      field :time_zone, -> { Apifreaks::Types::TimezoneLookupResponseTimeZone }, optional: false, nullable: false

      field :airport_details, -> { Apifreaks::Types::TimezoneLookupResponseAirportDetails }, optional: true, nullable: false

      field :lo_code_details, -> { Apifreaks::Types::TimezoneLookupResponseLoCodeDetails }, optional: true, nullable: false
    end
  end
end
