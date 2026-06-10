# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkZipcodeLookupResponse < Internal::Types::Model
      field :results, -> { Internal::Types::Array[Apifreaks::Types::BulkZipcodeLookupResponseResultsItem] }, optional: true, nullable: false
    end
  end
end
