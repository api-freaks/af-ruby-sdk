# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainAvailabilitySuggestionsResponse < Internal::Types::Model
      field :domain_available_response, -> { Internal::Types::Array[Apifreaks::Types::DomainAvailabilitySuggestionsResponseDomainAvailableResponseItem] }, optional: true, nullable: false
    end
  end
end
