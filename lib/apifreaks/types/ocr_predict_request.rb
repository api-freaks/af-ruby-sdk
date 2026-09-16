# frozen_string_literal: true

module Apifreaks
  module Types
    class OcrPredictRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :url, -> { String }, optional: true, nullable: false

      field :model, -> { Apifreaks::Types::OcrPredictRequestModel }, optional: false, nullable: false

      field :page_range, -> { String }, optional: true, nullable: false

      field :zone, -> { String }, optional: true, nullable: false

      field :new_line, -> { Integer }, optional: true, nullable: false
    end
  end
end
