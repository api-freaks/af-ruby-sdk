# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class ReadabilityScoreResponse < Internal::Types::Model
      field :readability_scores, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScores }, optional: true, nullable: false

      field :sentence_readability, -> { Internal::Types::Array[Apifreaks::Types::ReadabilityScoreResponseSentenceReadabilityItem] }, optional: true, nullable: false

      field :readability_grade, -> { Float }, optional: true, nullable: false
    end
  end
end
