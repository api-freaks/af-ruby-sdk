# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContact }

      member -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemError }
    end
  end
end
