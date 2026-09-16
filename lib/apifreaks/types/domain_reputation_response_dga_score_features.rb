# frozen_string_literal: true

module Apifreaks
  module Types
    # Underlying lexical / statistical features used in DGA detection.
    class DomainReputationResponseDgaScoreFeatures < Internal::Types::Model
      field :domain_length, -> { Integer }, optional: false, nullable: false

      field :vowel_consonant_ratio, -> { Integer }, optional: false, nullable: false

      field :ngram_perplexity, -> { Integer }, optional: false, nullable: false

      field :shannon_entropy, -> { Integer }, optional: false, nullable: false

      field :digit_letter_ratio, -> { Integer }, optional: false, nullable: false

      field :consonant_streak_max, -> { Integer }, optional: false, nullable: false

      field :tld_in_known_dga_set, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
