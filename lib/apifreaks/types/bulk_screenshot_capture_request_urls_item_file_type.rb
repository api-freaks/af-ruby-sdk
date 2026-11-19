# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module BulkScreenshotCaptureRequestURLsItemFileType
      extend Apifreaks::Internal::Types::Enum

      PNG = "PNG"
      JPEG = "JPEG"
      WEBP = "WEBP"
      PDF = "PDF"
      MP4 = "MP4"
      GIF = "GIF"
      WEBM = "WEBM"
    end
  end
end
