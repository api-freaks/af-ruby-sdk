# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkUserAgentLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkUserAgentLookupRequestFormat }, optional: true, nullable: false

      field :ua_strings, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "uaStrings"
    end
  end
end
