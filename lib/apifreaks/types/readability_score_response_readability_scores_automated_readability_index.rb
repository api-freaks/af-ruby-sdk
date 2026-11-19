# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Automated Readability Index (ARI)
    class ReadabilityScoreResponseReadabilityScoresAutomatedReadabilityIndex < Internal::Types::Model
      field :score, -> { Float }, optional: true, nullable: false

      field :level, -> { String }, optional: true, nullable: false
    end
  end
end
