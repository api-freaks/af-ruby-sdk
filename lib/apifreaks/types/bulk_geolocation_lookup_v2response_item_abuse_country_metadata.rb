# frozen_string_literal: true

module Apifreaks
  module Types
    # Country-specific metadata.
    class BulkGeolocationLookupV2ResponseItemAbuseCountryMetadata < Internal::Types::Model
      field :calling_code, -> { String }, optional: false, nullable: false

      field :tld, -> { String }, optional: false, nullable: false

      field :languages, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
