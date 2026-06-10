# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSLookupResponseDNSRecordsItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainDNSLookupResponseDNSRecordsItemAddress }

      member -> { Apifreaks::Types::DomainDNSLookupResponseDNSRecordsItemOne }

      member -> { Apifreaks::Types::DomainDNSLookupResponseDNSRecordsItemPriority }

      member -> { Apifreaks::Types::DomainDNSLookupResponseDNSRecordsItemSingleName }

      member -> { Apifreaks::Types::DomainDNSLookupResponseDNSRecordsItemAdmin }

      member -> { Apifreaks::Types::DomainDNSLookupResponseDNSRecordsItemStrings }
    end
  end
end
