# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemSwitchToIframe < Internal::Types::Model
      field :switch_to_iframe, -> { String }, optional: true, nullable: false, api_name: "switchToIframe"
    end
  end
end
