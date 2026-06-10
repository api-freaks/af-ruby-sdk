# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisReverseResponseWhoisDomainsHistoricalItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainWhoisReverseResponseWhoisDomainsHistoricalItemAdministrativeContact }

      member -> { Apifreaks::Types::DomainWhoisReverseResponseWhoisDomainsHistoricalItemCompanyname }
    end
  end
end
