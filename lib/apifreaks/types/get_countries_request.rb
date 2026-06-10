# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCountriesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetCountriesRequestFormat }, optional: true, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :subregion, -> { String }, optional: true, nullable: false
    end
  end
end
