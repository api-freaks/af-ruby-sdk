# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCountryDetailsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetCountryDetailsRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false
    end
  end
end
