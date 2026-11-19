# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module ReadabilityScoreRequestTarget
      extend Apifreaks::Internal::Types::Enum

      GENERAL = "general"
      PROFESSIONAL = "professional"
      ACADEMIC = "academic"
      TECHNICAL = "technical"
    end
  end
end
