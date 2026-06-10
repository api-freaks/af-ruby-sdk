# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyOneInstructionsItemGetForm < Internal::Types::Model
      field :get_form, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemGetFormGetForm }, optional: true, nullable: false, api_name: "getForm"
    end
  end
end
