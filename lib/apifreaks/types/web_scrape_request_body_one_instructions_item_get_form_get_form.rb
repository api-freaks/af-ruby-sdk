# frozen_string_literal: true

module Apifreaks
  module Types
    # Submits a form using GET method. Provide the form's XPath/CSS selector and input values.
    class WebScrapeRequestBodyOneInstructionsItemGetFormGetForm < Internal::Types::Model
      field :selector, -> { String }, optional: true, nullable: false

      field :data, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemGetFormGetFormData }, optional: true, nullable: false
    end
  end
end
