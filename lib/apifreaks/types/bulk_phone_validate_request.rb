# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkPhoneValidateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkPhoneValidateRequestFormat }, optional: true, nullable: false

      field :numbers, -> { Internal::Types::Array[Apifreaks::Types::BulkPhoneValidateRequestNumbersItem] }, optional: false, nullable: false
    end
  end
end
