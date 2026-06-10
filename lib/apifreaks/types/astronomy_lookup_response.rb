# frozen_string_literal: true

module Apifreaks
  module Types
    class AstronomyLookupResponse < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::AstronomyLookupResponseLocation }, optional: false, nullable: false

      field :astronomy, -> { Apifreaks::Types::AstronomyLookupResponseAstronomy }, optional: false, nullable: false
    end
  end
end
