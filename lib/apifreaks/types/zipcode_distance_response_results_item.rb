# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeDistanceResponseResultsItem < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :distance, -> { Integer }, optional: true, nullable: false
    end
  end
end
