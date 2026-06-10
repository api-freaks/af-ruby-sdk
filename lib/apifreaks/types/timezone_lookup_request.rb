# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::TimezoneLookupRequestFormat }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :tz, -> { String }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :lang, -> { Apifreaks::Types::TimezoneLookupRequestLang }, optional: true, nullable: false

      field :iata_code, -> { String }, optional: true, nullable: false

      field :icao_code, -> { String }, optional: true, nullable: false

      field :lo_code, -> { String }, optional: true, nullable: false
    end
  end
end
