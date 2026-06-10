# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemNewTab < Internal::Types::Model
      field :new_tab, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "newTab"
    end
  end
end
