# frozen_string_literal: true

module Apifreaks
  module Types
    class NotFoundErrorBodyUnresolvedValue < Internal::Types::Model
      field :message, -> { String }, optional: true, nullable: false

      field :suggestions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
