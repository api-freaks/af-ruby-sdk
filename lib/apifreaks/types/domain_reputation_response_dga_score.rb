# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Domain Generation Algorithm (DGA) detection results.
    class DomainReputationResponseDgaScore < Internal::Types::Model
      field :score, -> { Float }, optional: false, nullable: false

      field :is_dga, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :model, -> { String }, optional: false, nullable: false

      field :features, -> { Apifreaks::Types::DomainReputationResponseDgaScoreFeatures }, optional: false, nullable: false

      field :interpretation, -> { String }, optional: false, nullable: false
    end
  end
end
