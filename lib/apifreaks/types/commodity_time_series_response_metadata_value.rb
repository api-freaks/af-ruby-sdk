# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class CommodityTimeSeriesResponseMetadataValue < Internal::Types::Model
      field :unit, -> { String }, optional: false, nullable: false

      field :quote, -> { String }, optional: false, nullable: false
    end
  end
end
