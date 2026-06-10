# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyOneInstructionsItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemPostForm }

      member -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemGetForm }

      member -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemExtract }

      member -> { Apifreaks::Types::WebScrapeRequestBodyOneInstructionsItemGetPage }
    end
  end
end
