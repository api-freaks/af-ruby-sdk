# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkDomainDNSLookupResponse < Internal::Types::Model
      field :bulk_dns_info, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainDNSLookupResponseBulkDNSInfoItem] }, optional: false, nullable: false
    end
  end
end
