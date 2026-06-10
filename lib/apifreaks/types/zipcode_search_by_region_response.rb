# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeSearchByRegionResponse < Internal::Types::Model
      field :total_results, -> { Integer }, optional: true, nullable: false

      field :total_pages, -> { Integer }, optional: true, nullable: false

      field :current_page, -> { Integer }, optional: true, nullable: false

      field :current_page_size, -> { Integer }, optional: true, nullable: false

      field :codes, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
