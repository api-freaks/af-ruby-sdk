# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyConvertLatestResponse < Internal::Types::Model
      field :date, -> { String }, optional: false, nullable: false

      field :from, -> { String }, optional: false, nullable: false

      field :to, -> { String }, optional: false, nullable: false

      field :rate, -> { String }, optional: false, nullable: false

      field :given_amount, -> { String }, optional: false, nullable: false, api_name: "givenAmount"

      field :converted_amount, -> { String }, optional: false, nullable: false, api_name: "convertedAmount"
    end
  end
end
