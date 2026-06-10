# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemAddress }

      member -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemOne }

      member -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemPriority }

      member -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemSingleName }

      member -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemAdmin }

      member -> { Apifreaks::Types::DomainDNSReverseResponseReverseDNSRecordsItemDNSRecordsItemStrings }
    end
  end
end
