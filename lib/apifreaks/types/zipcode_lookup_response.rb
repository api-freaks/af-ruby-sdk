# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeLookupResponse < Internal::Types::Model
      field :results, -> { Internal::Types::Array[Apifreaks::Types::ZipcodeLookupResponseResultsItem] }, optional: true, nullable: false
    end
  end
end
