# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityFluctuationV2Response < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"

      field :rates, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityFluctuationV2ResponseRatesValue] }, optional: false, nullable: false

      field :unresolved, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityFluctuationV2ResponseUnresolvedValue] }, optional: true, nullable: false
    end
  end
end
