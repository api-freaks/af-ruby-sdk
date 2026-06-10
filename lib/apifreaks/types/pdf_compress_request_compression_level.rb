# frozen_string_literal: true

module Apifreaks
  module Types
    module PdfCompressRequestCompressionLevel
      extend Apifreaks::Internal::Types::Enum

      LOW = "low"
      BALANCED = "balanced"
      HIGH = "high"
      EXTREME = "extreme"
    end
  end
end
