# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyFluctuationRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CurrencyFluctuationRequestFormat }, optional: true, nullable: false

      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: true, nullable: false, api_name: "endDate"

      field :base, -> { String }, optional: true, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false
    end
  end
end
