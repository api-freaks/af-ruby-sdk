# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkGeolocationLookupV2RequestFormat }, optional: true, nullable: false

      field :lang, -> { Apifreaks::Types::BulkGeolocationLookupV2RequestLang }, optional: true, nullable: false

      field :fields, -> { String }, optional: true, nullable: false

      field :excludes, -> { String }, optional: true, nullable: false

      field :include, -> { String }, optional: true, nullable: false

      field :ips, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
