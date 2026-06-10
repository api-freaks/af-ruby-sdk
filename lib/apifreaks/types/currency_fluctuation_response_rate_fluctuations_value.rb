# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyFluctuationResponseRateFluctuationsValue < Internal::Types::Model
      field :start_rate, -> { String }, optional: false, nullable: false, api_name: "startRate"

      field :end_rate, -> { String }, optional: false, nullable: false, api_name: "endRate"

      field :change, -> { String }, optional: false, nullable: false

      field :percent_change, -> { String }, optional: false, nullable: false, api_name: "percentChange"
    end
  end
end
