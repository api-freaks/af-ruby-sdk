# frozen_string_literal: true

module Apifreaks
  module Types
    # Retrieves page content.
    class WebScrapeRequestBodyOneInstructionsItemGetPageGetPage < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { String }

      member -> { Internal::Types::Boolean }
    end
  end
end
