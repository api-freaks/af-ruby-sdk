# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyOne < Internal::Types::Model
      field :instructions, -> { Internal::Types::Array[Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItem] }, optional: false, nullable: false
    end
  end
end
