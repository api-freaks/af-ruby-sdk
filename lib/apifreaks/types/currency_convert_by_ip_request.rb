# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyConvertByIPRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencyConvertByIPRequestFormat }, optional: true, nullable: false

      field :updates, -> { Apifreaks::Types::CurrencyConvertByIPRequestUpdates }, optional: true, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :amount, -> { Integer }, optional: true, nullable: false
    end
  end
end
