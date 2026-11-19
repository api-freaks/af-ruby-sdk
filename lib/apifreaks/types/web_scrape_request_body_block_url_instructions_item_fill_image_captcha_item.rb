# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Instructions for locating and solving a single image CAPTCHA challenge.
    class WebScrapeRequestBodyBlockURLInstructionsItemFillImageCaptchaItem < Internal::Types::Model
      field :image_path, -> { String }, optional: true, nullable: false, api_name: "imagePath"

      field :text_field, -> { String }, optional: true, nullable: false, api_name: "textField"

      field :image_update_path, -> { String }, optional: true, nullable: false, api_name: "imageUpdatePath"

      field :captcha_failed_path, -> { String }, optional: true, nullable: false, api_name: "captchaFailedPath"

      field :model, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemFillImageCaptchaItemModel }, optional: true, nullable: false
    end
  end
end
