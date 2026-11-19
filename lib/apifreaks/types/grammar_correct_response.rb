# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GrammarCorrectResponse < Internal::Types::Model
      field :grammar_correction, -> { String }, optional: false, nullable: false
    end
  end
end
