# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURL < Internal::Types::Model
      field :block_url, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "blockUrl"

      field :cookies, -> { Internal::Types::Array[Apifreaks::Types::WebScrapeRequestBodyBlockURLCookiesItem] }, optional: true, nullable: false

      field :instructions, -> { Internal::Types::Array[Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItem] }, optional: false, nullable: false
    end
  end
end
