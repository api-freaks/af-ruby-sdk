# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A selector/value pair used by fill, select, and clickButtonByValue instructions.
    class WebScrapeRequestBodyBlockURLInstructionsItemSelect < Internal::Types::Model
      field :place, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
