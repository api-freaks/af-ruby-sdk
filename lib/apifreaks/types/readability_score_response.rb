# frozen_string_literal: true

module Apifreaks
  module Types
    class ReadabilityScoreResponse < Internal::Types::Model
      field :readability_scores, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScores }, optional: true, nullable: false

      field :sentence_readability, -> { Internal::Types::Array[Apifreaks::Types::ReadabilityScoreResponseSentenceReadabilityItem] }, optional: true, nullable: false

      field :readability_grade, -> { Integer }, optional: true, nullable: false
    end
  end
end
