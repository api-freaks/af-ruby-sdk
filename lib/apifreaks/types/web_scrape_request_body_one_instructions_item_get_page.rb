# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyOneInstructionsItemGetPage < Internal::Types::Model
      field :get_page, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemGetPageGetPage }, optional: true, nullable: false, api_name: "getPage"
    end
  end
end
