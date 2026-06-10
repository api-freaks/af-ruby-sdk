# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyOneInstructionsItemPostForm < Internal::Types::Model
      field :post_form, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemPostFormPostForm }, optional: true, nullable: false, api_name: "postForm"
    end
  end
end
