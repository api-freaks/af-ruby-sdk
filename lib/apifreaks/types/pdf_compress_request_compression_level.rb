# frozen_string_literal: true

require_relative "../../apifreaks"

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
