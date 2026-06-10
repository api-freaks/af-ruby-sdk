# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemClickIfExist < Internal::Types::Model
      field :click_if_exist, -> { String }, optional: true, nullable: false, api_name: "clickIfExist"
    end
  end
end
