# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Form selector and field values to submit via postForm or getForm.
    class WebScrapeRequestBodyOneInstructionsItemPostForm < Internal::Types::Model
      field :selector, -> { String }, optional: true, nullable: false

      field :data, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
    end
  end
end
