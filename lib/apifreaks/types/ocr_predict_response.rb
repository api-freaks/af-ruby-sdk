# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class OcrPredictResponse < Internal::Types::Model
      field :ocr_text, -> { Apifreaks::Types::OcrPredictResponseOcrText }, optional: false, nullable: false, api_name: "OCRText"
    end
  end
end
