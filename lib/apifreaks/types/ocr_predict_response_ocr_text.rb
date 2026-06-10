# frozen_string_literal: true

module Apifreaks
  module Types
    # Array containing extracted text. Structure varies based on input type and new_line parameter:
    # - Single file, new_line=0: Array with single string element
    # - Single file, new_line=1: Array of strings (one per line)
    # - Bulk/ZIP file, new_line=0: Array of strings (one per file)
    # - Bulk/ZIP file, new_line=1: Array of arrays (each inner array contains lines for respective file)
    class OcrPredictResponseOcrText < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Internal::Types::Array[String] }

      member -> { Internal::Types::Array[Internal::Types::Array[String]] }
    end
  end
end
