# frozen_string_literal: true

module Apifreaks
  module Types
    # Coleman-Liau Index
    class ReadabilityScoreResponseReadabilityScoresColemanLiauIndex < Internal::Types::Model
      field :score, -> { Integer }, optional: true, nullable: false

      field :level, -> { String }, optional: true, nullable: false
    end
  end
end
