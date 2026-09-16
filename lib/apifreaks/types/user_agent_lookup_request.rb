# frozen_string_literal: true

module Apifreaks
  module Types
    class UserAgentLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::UserAgentLookupRequestFormat }, optional: true, nullable: false
    end
  end
end
