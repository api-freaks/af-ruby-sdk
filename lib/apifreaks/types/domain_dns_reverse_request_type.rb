# frozen_string_literal: true

module Apifreaks
  module Types
    module DomainDNSReverseRequestType
      extend Apifreaks::Internal::Types::Enum

      A = "A"
      AAAA = "AAAA"
      MX = "MX"
      NS = "NS"
      SOA = "SOA"
      SPF = "SPF"
      TXT = "TXT"
      CNAME = "CNAME"
    end
  end
end
