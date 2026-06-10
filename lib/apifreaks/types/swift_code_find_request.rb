# frozen_string_literal: true

module Apifreaks
  module Types
    class SwiftCodeFindRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::SwiftCodeFindRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :bank, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false
    end
  end
end
