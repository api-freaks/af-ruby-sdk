# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemSwitchToParentFrame < Internal::Types::Model
      field :switch_to_parent_frame, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "switchToParentFrame"
    end
  end
end
