# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemSelect < Internal::Types::Model
      field :select, -> { Apifreaks::Types::WebScrapeRequestBodyBlockURLInstructionsItemSelectSelect }, optional: true, nullable: false
    end
  end
end
