# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Account-level detection details. Omitted entirely when validSyntax is false.
    class DisposableEmailCheckV2ResponseAccount < Internal::Types::Model
      field :role, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
