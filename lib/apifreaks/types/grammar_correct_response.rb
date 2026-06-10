# frozen_string_literal: true

module Apifreaks
  module Types
    class GrammarCorrectResponse < Internal::Types::Model
      field :grammar_correction, -> { String }, optional: false, nullable: false
    end
  end
end
