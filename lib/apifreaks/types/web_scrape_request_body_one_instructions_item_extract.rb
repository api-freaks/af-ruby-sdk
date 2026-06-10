# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyOneInstructionsItemExtract < Internal::Types::Model
      field :extract, -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemExtractExtract }, optional: true, nullable: false
    end
  end
end
