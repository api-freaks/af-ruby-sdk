# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainAvailabilitySuggestionsResponse < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainAvailabilitySuggestionsResponseDomain }

      member -> { Apifreaks::Types::DomainAvailabilitySuggestionsResponseDomainAvailableResponse }
    end
  end
end
