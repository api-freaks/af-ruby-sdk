# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyFluctuationResponse < Internal::Types::Model
      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"

      field :base, -> { String }, optional: false, nullable: false

      field :rate_fluctuations, -> { Internal::Types::Hash[String, Apifreaks::Types::CurrencyFluctuationResponseRateFluctuationsValue] }, optional: false, nullable: false, api_name: "rateFluctuations"
    end
  end
end
