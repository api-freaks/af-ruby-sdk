# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class IPSecurityLookupResponse < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::IPSecurityLookupResponseSecurity }, optional: true, nullable: false
    end
  end
end
