# frozen_string_literal: true

module Apifreaks
  module Types
    # Submits a form using POST method. Provide the form's XPath/CSS selector and input values.
    class WebScrapeRequestBodyOneInstructionsItemPostFormPostForm < Internal::Types::Model
      field :selector, -> { String }, optional: true, nullable: false

      field :data, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemPostFormPostFormData }, optional: true, nullable: false
    end
  end
end
