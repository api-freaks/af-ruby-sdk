# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemBlockElement < Internal::Types::Model
      field :block_element, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "blockElement"
    end
  end
end
