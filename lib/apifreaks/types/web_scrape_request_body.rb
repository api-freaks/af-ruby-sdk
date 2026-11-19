# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class WebScrapeRequestBody < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::WebScrapeRequestBodyBlockURL }

      member -> { Apifreaks::Types::WebScrapeRequestBodyOne }
    end
  end
end
