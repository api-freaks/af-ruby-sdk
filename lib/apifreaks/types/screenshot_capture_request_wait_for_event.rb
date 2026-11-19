# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module ScreenshotCaptureRequestWaitForEvent
      extend Apifreaks::Internal::Types::Enum

      LOAD = "load"
      DOMCONTENTLOADED = "domcontentloaded"
      NETWORKIDLE = "networkidle"
    end
  end
end
