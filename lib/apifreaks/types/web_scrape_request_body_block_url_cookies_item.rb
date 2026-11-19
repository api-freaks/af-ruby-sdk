# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLCookiesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
