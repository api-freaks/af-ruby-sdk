# frozen_string_literal: true

module Apifreaks
  module Types
    # Gunning Fog Index
    class ReadabilityScoreResponseReadabilityScoresGunningFog < Internal::Types::Model
      field :score, -> { Integer }, optional: true, nullable: false

      field :level, -> { String }, optional: true, nullable: false
    end
  end
end
