# frozen_string_literal: true

module Apifreaks
  module Types
    class AstronomyLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::AstronomyLookupRequestFormat }, optional: true, nullable: false

      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :lang, -> { String }, optional: true, nullable: false

      field :date, -> { String }, optional: true, nullable: false

      field :elevation, -> { Integer }, optional: true, nullable: false

      field :time_zone, -> { String }, optional: true, nullable: false
    end
  end
end
