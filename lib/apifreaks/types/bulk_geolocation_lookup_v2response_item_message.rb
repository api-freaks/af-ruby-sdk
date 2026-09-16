# frozen_string_literal: true

module Apifreaks
  module Types
    # Per-item error, returned in place of a location result when an individual IP is invalid, bogon/reserved, or not
    # found in the database.
    class BulkGeolocationLookupV2ResponseItemMessage < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
