# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GetSubregionsResponse < Internal::Types::Model
      field :subregions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
