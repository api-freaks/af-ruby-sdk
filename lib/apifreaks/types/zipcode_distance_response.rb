# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeDistanceResponse < Internal::Types::Model
      field :result_count, -> { Integer }, optional: true, nullable: false

      field :results, -> { Internal::Types::Array[Apifreaks::Types::ZipcodeDistanceResponseResultsItem] }, optional: true, nullable: false
    end
  end
end
