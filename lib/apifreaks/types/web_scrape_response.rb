# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeResponse < Internal::Types::Model
      field :extracted_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false, api_name: "extractedData"
    end
  end
end
