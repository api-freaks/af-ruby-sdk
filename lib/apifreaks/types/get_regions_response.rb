# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GetRegionsResponse < Internal::Types::Model
      field :regions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
