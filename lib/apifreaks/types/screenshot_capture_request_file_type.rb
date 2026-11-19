# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module ScreenshotCaptureRequestFileType
      extend Apifreaks::Internal::Types::Enum

      PNG = "PNG"
      JPEG = "JPEG"
      WEBP = "WEBP"
      PDF = "PDF"
      MP4 = "mp4"
      GIF = "gif"
      WEBM = "webm"
    end
  end
end
