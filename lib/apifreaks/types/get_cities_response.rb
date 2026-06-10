# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCitiesResponse < Internal::Types::Model
      field :cities, -> { Internal::Types::Array[Apifreaks::Types::GetCitiesResponseCitiesItem] }, optional: false, nullable: false
    end
  end
end
