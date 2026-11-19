# frozen_string_literal: true

module Apifreaks
  module Types
    class GeocoderSearchRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GeocoderSearchRequestFormat }, optional: true, nullable: false

      field :query, -> { String }, optional: false, nullable: false

      field :limit, -> { Integer }, optional: true, nullable: false

      field :min_lat, -> { Float }, optional: true, nullable: false

      field :max_lat, -> { Float }, optional: true, nullable: false

      field :min_lon, -> { Float }, optional: true, nullable: false

      field :max_lon, -> { Float }, optional: true, nullable: false

      field :accept_language, -> { String }, optional: true, nullable: false, api_name: "Accept-Language"
    end
  end
end
