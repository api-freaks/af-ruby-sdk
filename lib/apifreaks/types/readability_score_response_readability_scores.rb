# frozen_string_literal: true

module Apifreaks
  module Types
    # Standard readability formula scores, keyed by metric name. Metrics that cannot be computed for the supplied text
    # are omitted.
    class ReadabilityScoreResponseReadabilityScores < Internal::Types::Model
      field :flesch_reading_ease, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScoresFleschReadingEase }, optional: true, nullable: false

      field :flesch_kincaid_grade, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScoresFleschKincaidGrade }, optional: true, nullable: false

      field :gunning_fog, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScoresGunningFog }, optional: true, nullable: false

      field :smog_index, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScoresSmogIndex }, optional: true, nullable: false

      field :coleman_liau_index, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScoresColemanLiauIndex }, optional: true, nullable: false

      field :automated_readability_index, -> { Apifreaks::Types::ReadabilityScoreResponseReadabilityScoresAutomatedReadabilityIndex }, optional: true, nullable: false
    end
  end
end
