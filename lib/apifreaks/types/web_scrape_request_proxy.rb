# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestProxy < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Internal::Types::Boolean }

      member -> { String }

      member -> { Internal::Types::Hash[String, Object] }
    end
  end
end
