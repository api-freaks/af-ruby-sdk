# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::ZipcodeLookupRequestFormat }, optional: true, nullable: false

      field :code, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: true, nullable: false
    end
  end
end
