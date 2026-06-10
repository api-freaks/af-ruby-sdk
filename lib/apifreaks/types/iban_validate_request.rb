# frozen_string_literal: true

module Apifreaks
  module Types
    class IbanValidateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::IbanValidateRequestFormat }, optional: true, nullable: false

      field :iban, -> { String }, optional: false, nullable: false
    end
  end
end
