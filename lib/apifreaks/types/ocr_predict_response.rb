# frozen_string_literal: true

module Apifreaks
  module Types
    class OcrPredictResponse < Internal::Types::Model
      field :ocr_text, -> { Apifreaks::Types::OcrPredictResponseOcrText }, optional: false, nullable: false, api_name: "OCRText"
    end
  end
end
