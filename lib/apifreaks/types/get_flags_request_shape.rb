# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module GetFlagsRequestShape
      extend Apifreaks::Internal::Types::Enum

      FLAT = "flat"
      ROUND = "round"
    end
  end
end
