# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module PdfConvertToJpgRequestProfile
      extend Apifreaks::Internal::Types::Enum

      GRAY = "gray"
      RGB = "rgb"
      CMYK = "cmyk"
    end
  end
end
