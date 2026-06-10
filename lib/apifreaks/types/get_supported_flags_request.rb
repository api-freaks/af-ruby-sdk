# frozen_string_literal: true

module Apifreaks
  module Types
    class GetSupportedFlagsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"
    end
  end
end
