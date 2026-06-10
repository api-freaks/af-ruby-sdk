# frozen_string_literal: true

module Apifreaks
  module Types
    # Flesch-Kincaid Grade Level
    class ReadabilityScoreResponseReadabilityScoresFleschKincaidGrade < Internal::Types::Model
      field :score, -> { Integer }, optional: true, nullable: false

      field :level, -> { String }, optional: true, nullable: false
    end
  end
end
