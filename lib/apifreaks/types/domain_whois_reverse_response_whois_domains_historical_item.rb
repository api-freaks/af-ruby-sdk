# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainWhoisReverseResponseWhoisDomainsHistoricalItem < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainWhoisReverseResponseWhoisDomainsHistoricalItemAdministrativeContact }

      member -> { Apifreaks::Types::DomainWhoisReverseResponseWhoisDomainsHistoricalItemCompanyName }
    end
  end
end
