# frozen_string_literal: true

module Apifreaks
  module Types
    class CurrencyHistoricalLimitsResponse < Internal::Types::Model
      field :availability_period, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false, api_name: "availabilityPeriod"
    end
  end
end
