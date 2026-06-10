# frozen_string_literal: true

module Apifreaks
  module Types
    class WebScrapeRequestBodyBlockURLCookiesItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false
    end
  end
end
