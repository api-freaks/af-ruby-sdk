# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Wrapper object containing one WHOIS result or error per requested domain, in request order.
    class BulkDomainWhoisLookupV2Response < Internal::Types::Model
      field :bulk_whois_response, -> { Internal::Types::Array[Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItem] }, optional: false, nullable: false
    end
  end
end
