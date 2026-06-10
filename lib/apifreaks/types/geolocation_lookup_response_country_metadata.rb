# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseCountryMetadata < Internal::Types::Model
      field :calling_code, -> { String }, optional: true, nullable: false

      field :tld, -> { String }, optional: true, nullable: false

      field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
