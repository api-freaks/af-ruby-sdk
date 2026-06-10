# frozen_string_literal: true

module Apifreaks
  module Types
    class ReadabilityScoreRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :target, -> { Apifreaks::Types::ReadabilityScoreRequestTarget }, optional: true, nullable: false

      field :exclude, -> { String }, optional: true, nullable: false

      field :text, -> { String }, optional: false, nullable: false
    end
  end
end
