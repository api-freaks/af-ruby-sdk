# frozen_string_literal: true

module Apifreaks
  module Types
    class GetRegionsResponse < Internal::Types::Model
      field :regions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
