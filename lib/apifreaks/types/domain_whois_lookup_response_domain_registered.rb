# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module DomainWhoisLookupResponseDomainRegistered
      extend Apifreaks::Internal::Types::Enum

      YES = "yes"
      NO = "no"
      RESTRICTED = "restricted"
    end
  end
end
