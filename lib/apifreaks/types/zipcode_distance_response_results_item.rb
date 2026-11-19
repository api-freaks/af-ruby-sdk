# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class ZipcodeDistanceResponseResultsItem < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :distance, -> { Float }, optional: true, nullable: false
    end
  end
end
