# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencySupportedRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencySupportedRequestFormat }, optional: true, nullable: false
    end
  end
end
