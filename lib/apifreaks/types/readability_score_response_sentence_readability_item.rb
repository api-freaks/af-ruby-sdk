# frozen_string_literal: true

module Apifreaks
  module Types
    class ReadabilityScoreResponseSentenceReadabilityItem < Internal::Types::Model
      field :sentence, -> { String }, optional: true, nullable: false

      field :readability_grade, -> { Integer }, optional: true, nullable: false

      field :readability_level, -> { Apifreaks::Types::ReadabilityScoreResponseSentenceReadabilityItemReadabilityLevel }, optional: true, nullable: false
    end
  end
end
