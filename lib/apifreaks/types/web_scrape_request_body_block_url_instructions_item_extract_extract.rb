# frozen_string_literal: true

module Apifreaks
  module Types
    # Defines what data to extract and how to extract it.
    class WebScrapeRequestBodyBlockURLInstructionsItemExtractExtract < Internal::Types::Model
      field :html, -> { String }, optional: true, nullable: false

      field :text, -> { String }, optional: true, nullable: false

      field :user_data, -> { String }, optional: true, nullable: false
    end
  end
end
