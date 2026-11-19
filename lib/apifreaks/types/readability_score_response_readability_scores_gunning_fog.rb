# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Gunning Fog Index
    class ReadabilityScoreResponseReadabilityScoresGunningFog < Internal::Types::Model
      field :score, -> { Float }, optional: true, nullable: false

      field :level, -> { String }, optional: true, nullable: false
    end
  end
end
