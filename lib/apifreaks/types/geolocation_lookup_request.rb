# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GeolocationLookupRequestFormat }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :lang, -> { Apifreaks::Types::GeolocationLookupRequestLang }, optional: true, nullable: false

      field :fields, -> { String }, optional: true, nullable: false

      field :excludes, -> { String }, optional: true, nullable: false

      field :include, -> { String }, optional: true, nullable: false
    end
  end
end
