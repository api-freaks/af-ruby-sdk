# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module OcrPredictRequestModel
      extend Apifreaks::Internal::Types::Enum

      MINI_OCR_V1 = "mini-ocr-v1"
      OCR_V1 = "ocr-v1"
    end
  end
end
