# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CurrencyHistoricalLimitsResponse < Internal::Types::Model
      field :availability_period, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false, api_name: "availabilityPeriod"
    end
  end
end
