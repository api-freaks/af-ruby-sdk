# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLInstructionsItemWaitFor < Internal::Types::Model
      field :wait_for, -> { String }, optional: true, nullable: false, api_name: "waitFor"
    end
  end
end
