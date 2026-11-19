# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A single static-HTML scraping step. Exactly one of these action fields is set per instruction; every other field
    # is absent.
    class WebScrapeRequestBodyOneInstructionsItem < Internal::Types::Model
      field :post_form, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemPostForm }, optional: true, nullable: false, api_name: "postForm"

      field :get_form, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemGetForm }, optional: true, nullable: false, api_name: "getForm"

      field :extract, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

      field :get_page, -> { String }, optional: true, nullable: false, api_name: "getPage"
    end
  end
end
