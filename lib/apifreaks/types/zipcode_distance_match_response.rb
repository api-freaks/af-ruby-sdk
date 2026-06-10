# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeDistanceMatchResponse < Internal::Types::Model
      field :results_count, -> { String }, optional: true, nullable: false

      field :results, -> { Internal::Types::Array[Apifreaks::Types::ZipcodeDistanceMatchResponseResultsItem] }, optional: true, nullable: false
    end
  end
end
