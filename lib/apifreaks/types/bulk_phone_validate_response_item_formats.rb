# frozen_string_literal: true

module Apifreaks
  module Types
    # The number represented in four standardized formats. Only returned for valid numbers.
    class BulkPhoneValidateResponseItemFormats < Internal::Types::Model
      field :e164, -> { String }, optional: true, nullable: false, api_name: "E164"

      field :international, -> { String }, optional: true, nullable: false, api_name: "International"

      field :national, -> { String }, optional: true, nullable: false, api_name: "National"

      field :rfc3966, -> { String }, optional: true, nullable: false, api_name: "RFC3966"
    end
  end
end
