# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBody < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURL }

      member -> { Apifreaks::Types::WebScrapeRequestBodyOne }
    end
  end
end
