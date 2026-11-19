# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContact }

      member -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemError }
    end
  end
end
