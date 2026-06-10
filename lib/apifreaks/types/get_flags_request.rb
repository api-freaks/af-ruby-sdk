# frozen_string_literal: true

module Apifreaks
  module Types
    class GetFlagsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :name, -> { String }, optional: false, nullable: false

      field :shape, -> { Apifreaks::Types::GetFlagsRequestShape }, optional: false, nullable: false

      field :format, -> { Apifreaks::Types::GetFlagsRequestFormat }, optional: true, nullable: false

      field :size, -> { Apifreaks::Types::GetFlagsRequestSize }, optional: true, nullable: false

      field :type, -> { Apifreaks::Types::GetFlagsRequestType }, optional: false, nullable: false
    end
  end
end
