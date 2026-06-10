# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemGeneralImageCaptcha < Internal::Types::Model
      field :general_image_captcha, -> { Internal::Types::Array[Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemGeneralImageCaptchaGeneralImageCaptchaItem] }, optional: true, nullable: false, api_name: "generalImageCaptcha"
    end
  end
end
