# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemAddress }

      member -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemOne }

      member -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemPriority }

      member -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemSingleName }

      member -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemAdmin }

      member -> { Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItemDNSRecordsItemStrings }
    end
  end
end
