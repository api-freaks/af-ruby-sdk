# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupV2ResponseItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuse }

      member -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemMessage }
    end
  end
end
