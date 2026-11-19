# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Returned when `sug` is omitted or `true` — the queried domain plus suggested alternatives.
    class DomainAvailabilitySuggestionsResponseDomainAvailableResponse < Internal::Types::Model
      field :domain_available_response, -> { Internal::Types::Array[Apifreaks::Types::DomainAvailabilitySuggestionsResponseDomainAvailableResponseDomainAvailableResponseItem] }, optional: false, nullable: false
    end
  end
end
