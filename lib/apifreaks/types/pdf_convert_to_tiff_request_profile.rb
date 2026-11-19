# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module PdfConvertToTiffRequestProfile
      extend Apifreaks::Internal::Types::Enum

      BW = "bw"
      GRAY = "gray"
      RGB = "rgb"
      RGBA = "rgba"
      CMYK = "cmyk"
    end
  end
end
