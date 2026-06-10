# frozen_string_literal: true

module Apifreaks
  module Types
    class WeakWordsDetectRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
