# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class WeakWordsDetectResponseWeakWordsItem < Internal::Types::Model
      field :word, -> { String }, optional: false, nullable: false

      field :offset, -> { Integer }, optional: false, nullable: false
    end
  end
end
