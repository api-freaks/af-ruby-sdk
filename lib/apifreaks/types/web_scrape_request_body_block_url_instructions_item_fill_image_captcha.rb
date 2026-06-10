# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemFillImageCaptcha < Internal::Types::Model
      field :fill_image_captcha, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "fillImageCaptcha"
    end
  end
end
