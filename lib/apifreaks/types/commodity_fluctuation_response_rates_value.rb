# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityFluctuationResponseRatesValue < Internal::Types::Model
      field :start_rate, -> { Integer }, optional: false, nullable: false, api_name: "startRate"

      field :end_rate, -> { Integer }, optional: false, nullable: false, api_name: "endRate"

      field :change, -> { Integer }, optional: false, nullable: false

      field :change_percent, -> { Integer }, optional: false, nullable: false, api_name: "changePercent"
    end
  end
end
