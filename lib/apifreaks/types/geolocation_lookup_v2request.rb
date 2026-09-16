# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GeolocationLookupV2RequestFormat }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :lang, -> { Apifreaks::Types::GeolocationLookupV2RequestLang }, optional: true, nullable: false

      field :fields, -> { String }, optional: true, nullable: false

      field :excludes, -> { String }, optional: true, nullable: false

      field :include, -> { String }, optional: true, nullable: false
    end
  end
end
