# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # The API returns an empty object `{}` when no extract instruction matched anything.
    class WebScrapeResponse < Internal::Types::Model
      field :extracted_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "extractedData"
    end
  end
end
