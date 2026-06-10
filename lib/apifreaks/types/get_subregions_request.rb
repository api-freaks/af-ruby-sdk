# frozen_string_literal: true

module Apifreaks
  module Types
    class GetSubregionsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetSubregionsRequestFormat }, optional: true, nullable: false

      field :region, -> { String }, optional: false, nullable: false
    end
  end
end
