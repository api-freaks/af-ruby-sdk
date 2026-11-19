# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class DomainAvailabilitySuggestionsResponse < Internal::Types::Model
      extend Apifreaks::Internal::Types::Union

      member -> { Apifreaks::Types::DomainAvailabilitySuggestionsResponseDomain }

      member -> { Apifreaks::Types::DomainAvailabilitySuggestionsResponseDomainAvailableResponse }
    end
  end
end
