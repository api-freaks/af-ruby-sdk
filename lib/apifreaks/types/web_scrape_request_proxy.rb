# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class WebScrapeRequestProxy < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Internal::Types::Boolean }

      member -> { String }
    end
  end
end
