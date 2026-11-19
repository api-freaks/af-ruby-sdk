# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GeocoderReverseResponsePoiItem < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :category, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
