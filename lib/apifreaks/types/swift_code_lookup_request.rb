# frozen_string_literal: true

module Apifreaks
  module Types
    class SwiftCodeLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::SwiftCodeLookupRequestFormat }, optional: true, nullable: false

      field :swift_code, -> { String }, optional: false, nullable: false, api_name: "swiftCode"
    end
  end
end
