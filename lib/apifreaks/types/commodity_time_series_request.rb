# frozen_string_literal: true

module Apifreaks
  module Types
    class CommodityTimeSeriesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::CommodityTimeSeriesRequestFormat }, optional: true, nullable: false

      field :symbols, -> { String }, optional: true, nullable: false

      field :start_date, -> { String }, optional: false, nullable: false, api_name: "startDate"

      field :end_date, -> { String }, optional: false, nullable: false, api_name: "endDate"
    end
  end
end
