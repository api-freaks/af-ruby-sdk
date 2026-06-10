# frozen_string_literal: true

module Apifreaks
  module Types
    # SMOG Index
    class ReadabilityScoreResponseReadabilityScoresSmogIndex < Internal::Types::Model
      field :score, -> { Integer }, optional: true, nullable: false

      field :level, -> { String }, optional: true, nullable: false
    end
  end
end
