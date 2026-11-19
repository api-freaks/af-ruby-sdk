# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemAddress }

      member -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemPriority }

      member -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemOne }

      member -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemSingleName }

      member -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemAdmin }

      member -> { Apifreaks::Types::DomainDNSHistoryResponseHistoricalDNSRecordsItemDNSRecordsItemStrings }
    end
  end
end
