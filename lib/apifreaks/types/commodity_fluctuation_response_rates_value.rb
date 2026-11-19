# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityFluctuationResponseRatesValue < Internal::Types::Model
      field :start_rate, -> { Float }, optional: false, nullable: false, api_name: "startRate"

      field :end_rate, -> { Float }, optional: false, nullable: false, api_name: "endRate"

      field :change, -> { Float }, optional: false, nullable: false

      field :change_percent, -> { Float }, optional: false, nullable: false, api_name: "changePercent"
    end
  end
end
