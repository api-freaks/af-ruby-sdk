# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A single browser scraping step. Exactly one of these action fields is set per instruction; every other field is
    # absent.
    class WebScrapeRequestBodyBlockURLInstructionsItem < Internal::Types::Model
      field :fill, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemFill }, optional: true, nullable: false

      field :click, -> { String }, optional: true, nullable: false

      field :click_if_exist, -> { String }, optional: true, nullable: false, api_name: "clickIfExist"

      field :enter, -> { String }, optional: true, nullable: false

      field :new_tab, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "newTab"

      field :move_to_relative_tab, -> { Integer }, optional: true, nullable: false, api_name: "moveToRelativeTab"

      field :wait, -> { Integer }, optional: true, nullable: false

      field :wait_for, -> { String }, optional: true, nullable: false, api_name: "waitFor"

      field :select, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemSelect }, optional: true, nullable: false

      field :js_exe, -> { String }, optional: true, nullable: false, api_name: "jsExe"

      field :conditional_check, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false, api_name: "conditionalCheck"

      field :click_button_by_value, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemClickButtonByValue }, optional: true, nullable: false, api_name: "clickButtonByValue"

      field :general_image_captcha, -> { Internal::Types::Array[Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemGeneralImageCaptchaItem] }, optional: true, nullable: false, api_name: "generalImageCaptcha"

      field :block_element, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "blockElement"

      field :extract, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

      field :fill_image_captcha, -> { Internal::Types::Array[Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemFillImageCaptchaItem] }, optional: true, nullable: false, api_name: "fillImageCaptcha"

      field :switch_to_iframe, -> { String }, optional: true, nullable: false, api_name: "switchToIframe"

      field :switch_to_parent_frame, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "switchToParentFrame"

      field :resolve_audio_captcha, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemResolveAudioCaptcha }, optional: true, nullable: false, api_name: "resolveAudioCaptcha"

      field :screenshot, -> { String }, optional: true, nullable: false

      field :saveimage, -> { String }, optional: true, nullable: false
    end
  end
end
