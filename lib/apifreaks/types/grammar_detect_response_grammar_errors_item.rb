# frozen_string_literal: true

module Apifreaks
  module Types
    class GrammarDetectResponseGrammarErrorsItem < Internal::Types::Model
      field :word, -> { String }, optional: false, nullable: false

      field :offset, -> { Integer }, optional: false, nullable: false
    end
  end
end
