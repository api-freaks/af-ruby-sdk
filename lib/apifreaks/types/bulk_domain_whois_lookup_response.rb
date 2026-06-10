# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainWhoisLookupResponse < Internal::Types::Model
      field :bulk_whois_response, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItem] }, optional: true, nullable: false
    end
  end
end
