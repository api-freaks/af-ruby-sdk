# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module GetFlagsRequestFormat
      extend Apifreaks::Internal::Types::Enum

      PNG = "png"
      WEBP = "webp"
      SVG = "svg"
    end
  end
end
