# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::TimezoneLookupV2RequestFormat }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :tz, -> { String }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :lang, -> { Apifreaks::Types::TimezoneLookupV2RequestLang }, optional: true, nullable: false

      field :iata_code, -> { String }, optional: true, nullable: false

      field :icao_code, -> { String }, optional: true, nullable: false

      field :lo_code, -> { String }, optional: true, nullable: false
    end
  end
end
