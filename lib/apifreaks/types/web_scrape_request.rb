# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::WebScrapeRequestFormat }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: false

      field :text, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :js_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "jsEnabled"

      field :proxy, -> { Apifreaks::Types::WebScrapeRequestProxy }, optional: true, nullable: false

      field :ssl_ignore, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sslIgnore"

      field :window_size, -> { String }, optional: true, nullable: false, api_name: "windowSize"

      field :ad_block, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "adBlock"

      field :captcha, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :body, -> { Apifreaks::Types::WebScrapeRequestBody }, optional: false, nullable: false
    end
  end
end
