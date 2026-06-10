# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::AsnWhoisLookupRequestFormat }, optional: true, nullable: false

      field :asn, -> { String }, optional: false, nullable: false
    end
  end
end
