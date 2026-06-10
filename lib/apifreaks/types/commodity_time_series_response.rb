# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityTimeSeriesResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :timestamp, -> { Integer }, optional: true, nullable: false

      field :metadata, -> { Internal::Types::Hash[String, Apifreaks::Types::CommodityTimeSeriesResponseMetadataValue] }, optional: true, nullable: false

      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"

      field :rates, -> { Internal::Types::Hash[String, Internal::Types::Hash[String, Apifreaks::Types::CommodityTimeSeriesResponseRatesValueValue]] }, optional: false, nullable: false
    end
  end
end
