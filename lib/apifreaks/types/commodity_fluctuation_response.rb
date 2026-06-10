# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityFluctuationResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :timestamp, -> { Integer }, optional: true, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityFluctuationResponseMetadataValue] }, optional: true, nullable: false

      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"

      field :rates, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityFluctuationResponseRatesValue] }, optional: false, nullable: false
    end
  end
end
