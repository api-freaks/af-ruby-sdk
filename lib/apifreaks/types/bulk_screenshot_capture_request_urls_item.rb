# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkScreenshotCaptureRequestURLsItem < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false

      field :accept_languages, -> { String }, optional: true, nullable: false

      field :adjust_top, -> { Integer }, optional: true, nullable: false

      field :block_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_chat_widgets, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_event_source, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_fetch, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_font, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_images, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_js, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_manifest, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_media, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_specific_requests, -> { String }, optional: true, nullable: false

      field :block_stylesheets, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_text_track, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_tracking, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_web_socket, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_xhr, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :blur_selector, -> { String }, optional: true, nullable: false

      field :captcha_error, -> { String }, optional: true, nullable: false

      field :captcha_image, -> { String }, optional: true, nullable: false

      field :captcha_input, -> { String }, optional: true, nullable: false

      field :captcha_refresh, -> { String }, optional: true, nullable: false

      field :captcha_retries, -> { Integer }, optional: true, nullable: false

      field :captcha_submit, -> { String }, optional: true, nullable: false

      field :classic_proxy, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :click_recursion, -> { Integer }, optional: true, nullable: false

      field :clip_height, -> { Integer }, optional: true, nullable: false, api_name: "clip[height]"

      field :clip_width, -> { Integer }, optional: true, nullable: false, api_name: "clip[width]"

      field :clip_x, -> { Integer }, optional: true, nullable: false, api_name: "clip[x]"

      field :clip_y, -> { Integer }, optional: true, nullable: false, api_name: "clip[y]"

      field :cookies, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :css, -> { String }, optional: true, nullable: false

      field :css_url, -> { String }, optional: true, nullable: false

      field :custom_html, -> { String }, optional: true, nullable: false

      field :dark_mode, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :delay, -> { Integer }, optional: true, nullable: false

      field :destroy_screenshot, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :duration, -> { Integer }, optional: true, nullable: false

      field :enable_caching, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :enable_incognito, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :extract_html, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :extract_markdown, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :extract_text, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :fail_on_error, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :file_type, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemFileType }, optional: true, nullable: false

      field :format, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemFormat }, optional: true, nullable: false

      field :fresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :full_page, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :get_image_urls, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :gpu, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :grayscale, -> { Integer }, optional: true, nullable: false

      field :headers, -> { String }, optional: true, nullable: false

      field :height, -> { Integer }, optional: true, nullable: false

      field :image_quality, -> { Integer }, optional: true, nullable: false

      field :js, -> { String }, optional: true, nullable: false

      field :js_url, -> { String }, optional: true, nullable: false

      field :latitude, -> { Float }, optional: true, nullable: false

      field :lazy_load, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :longitude, -> { Float }, optional: true, nullable: false

      field :markdown, -> { String }, optional: true, nullable: false

      field :no_cookie_banners, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :ocr_model, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemOcrModel }, optional: true, nullable: false

      field :omit_background, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :output, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemOutput }, optional: true, nullable: false

      field :pdf_options, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemPdfOptions }, optional: true, nullable: false

      field :premium_proxy, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :proxy, -> { String }, optional: true, nullable: false

      field :remove_selector, -> { String }, optional: true, nullable: false

      field :result_file_name, -> { String }, optional: true, nullable: false

      field :retina, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :scroll_back, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :scroll_delay, -> { Integer }, optional: true, nullable: false

      field :scroll_speed, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemScrollSpeed }, optional: true, nullable: false

      field :scroll_to_element, -> { String }, optional: true, nullable: false

      field :scrolling_screenshot, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :selector, -> { String }, optional: true, nullable: false

      field :selector_to_click, -> { String }, optional: true, nullable: false

      field :solve_captcha, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :start_immediately, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :stealth, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :thumbnail_width, -> { Integer }, optional: true, nullable: false

      field :timeout, -> { Integer }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false

      field :ttl, -> { Integer }, optional: true, nullable: false

      field :user_agent, -> { String }, optional: true, nullable: false

      field :video, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :wait_for_event, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemWaitForEvent }, optional: true, nullable: false

      field :width, -> { Integer }, optional: true, nullable: false
    end
  end
end
