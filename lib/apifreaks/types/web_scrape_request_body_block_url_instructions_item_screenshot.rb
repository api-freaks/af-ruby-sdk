# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemScreenshot < Internal::Types::Model
      field :screenshot, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemScreenshotScreenshot }, optional: true, nullable: false
    end
  end
end
