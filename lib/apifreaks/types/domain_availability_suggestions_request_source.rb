# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module DomainAvailabilitySuggestionsRequestSource
      extend Apifreaks::Internal::Types::Enum

      DNS = "dns"
      WHOIS = "whois"
    end
  end
end
