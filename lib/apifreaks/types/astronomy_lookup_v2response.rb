# frozen_string_literal: true

module Apifreaks
  module Types
    # Astronomy data response containing location information and astronomical data.
    class AstronomyLookupV2Response < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::AstronomyLookupV2ResponseLocation }, optional: true, nullable: false

      field :astronomy, -> { Apifreaks::Types::AstronomyLookupV2ResponseAstronomy }, optional: false, nullable: false
    end
  end
end
