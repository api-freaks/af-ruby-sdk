# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkScreenshotCaptureResponseResultsItemURL < Internal::Types::Model
      field :screenshot, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :format, -> { String }, optional: false, nullable: false

      field :ttl, -> { String }, optional: false, nullable: false

      field :file_type, -> { String }, optional: true, nullable: false

      field :extracted_html, -> { String }, optional: true, nullable: false

      field :omit_background, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :destroy_screenshot, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :fail_on_error, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :proxy, -> { String }, optional: true, nullable: false

      field :no_cookie_banners, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_ads, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :headers, -> { String }, optional: true, nullable: false

      field :cookies, -> { String }, optional: true, nullable: false

      field :scroll_to_element, -> { String }, optional: true, nullable: false

      field :selector, -> { String }, optional: true, nullable: false

      field :blur_selector, -> { String }, optional: true, nullable: false

      field :remove_selector, -> { String }, optional: true, nullable: false

      field :css, -> { String }, optional: true, nullable: false

      field :css_url, -> { String }, optional: true, nullable: false

      field :js, -> { String }, optional: true, nullable: false

      field :js_url, -> { String }, optional: true, nullable: false

      field :user_agent, -> { String }, optional: true, nullable: false

      field :accept_languages, -> { String }, optional: true, nullable: false

      field :delay, -> { Integer }, optional: true, nullable: false

      field :thumbnail_width, -> { Integer }, optional: true, nullable: false

      field :output, -> { String }, optional: true, nullable: false

      field :fresh, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :enable_caching, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :lazy_load, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :full_page, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :retina, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :height, -> { Integer }, optional: true, nullable: false

      field :width, -> { Integer }, optional: true, nullable: false

      field :custom_html, -> { String }, optional: true, nullable: false

      field :block_chat_widgets, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_js, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_stylesheets, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_images, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_media, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_font, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_text_track, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_xhr, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_fetch, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_event_source, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_web_socket, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_manifest, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_specific_requests, -> { String }, optional: true, nullable: false

      field :adjust_top, -> { Integer }, optional: true, nullable: false

      field :image_quality, -> { Integer }, optional: true, nullable: false

      field :extract_html, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :extract_text, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :dark_mode, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :block_tracking, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :wait_for_event, -> { String }, optional: true, nullable: false

      field :grayscale, -> { Integer }, optional: true, nullable: false

      field :result_file_name, -> { String }, optional: true, nullable: false

      field :enable_incognito, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :timeout, -> { Integer }, optional: true, nullable: false

      field :scrolling_screenshot, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :multiple_scrolling, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :scroll_speed, -> { String }, optional: true, nullable: false

      field :duration, -> { Integer }, optional: true, nullable: false

      field :scroll_back, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :start_immediately, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :clip, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :sizes, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
    end
  end
end
