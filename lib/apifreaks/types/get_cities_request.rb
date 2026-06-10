# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCitiesRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetCitiesRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :admin_unit, -> { String }, optional: true, nullable: false
    end
  end
end
