# frozen_string_literal: true

module Apifreaks
  module Types
    # Captures screenshot of the page.
    class WebScrapeRequestBodyBlockURLInstructionsItemScreenshotScreenshot < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { String }

      member -> { Internal::Types::Boolean }
    end
  end
end
