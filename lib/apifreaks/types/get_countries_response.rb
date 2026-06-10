# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCountriesResponse < Internal::Types::Model
      field :countries, -> { Internal::Types::Array[Apifreaks::Types::GetCountriesResponseCountriesItem] }, optional: false, nullable: false
    end
  end
end
