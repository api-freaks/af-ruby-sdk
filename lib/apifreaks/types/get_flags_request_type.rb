# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module GetFlagsRequestType
      extend Apifreaks::Internal::Types::Enum

      COUNTRY = "country"
      ORGANIZATION = "organization"
    end
  end
end
