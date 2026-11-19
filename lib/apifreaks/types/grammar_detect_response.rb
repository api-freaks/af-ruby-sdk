# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GrammarDetectResponse < Internal::Types::Model
      field :grammar_errors, -> { Internal::Types::Array[Apifreaks::Types::GrammarDetectResponseGrammarErrorsItem] }, optional: false, nullable: false
    end
  end
end
