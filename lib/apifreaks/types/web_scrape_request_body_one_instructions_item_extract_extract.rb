# frozen_string_literal: true

module Apifreaks
  module Types
    # Defines what data to extract and how to extract it.
    class WebScrapeRequestBodyOneInstructionsItemExtractExtract < Internal::Types::Model
      field :html, -> { String }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false
    end
  end
end
