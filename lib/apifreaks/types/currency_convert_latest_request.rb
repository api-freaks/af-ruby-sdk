# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyConvertLatestRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencyConvertLatestRequestFormat }, optional: true, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :amount, -> { Integer }, optional: true, nullable: false

      field :updates, -> { Apifreaks::Types::CurrencyConvertLatestRequestUpdates }, optional: true, nullable: false
    end
  end
end
