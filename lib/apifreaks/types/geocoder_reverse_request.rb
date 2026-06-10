# frozen_string_literal: true

module Apifreaks
  module Types
    class GeocoderReverseRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GeocoderReverseRequestFormat }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: false, nullable: false

      field :lon, -> { Integer }, optional: false, nullable: false

      field :accept_language, -> { String }, optional: true, nullable: false, api_name: "Accept-Language"
    end
  end
end
