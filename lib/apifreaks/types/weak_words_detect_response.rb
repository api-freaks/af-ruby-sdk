# frozen_string_literal: true

module Apifreaks
  module Types
    class WeakWordsDetectResponse < Internal::Types::Model
      field :weak_words, -> { Internal::Types::Array[Apifreaks::Types::WeakWordsDetectResponseWeakWordsItem] }, optional: false, nullable: false
    end
  end
end
