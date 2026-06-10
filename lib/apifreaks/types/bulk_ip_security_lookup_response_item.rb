# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkIPSecurityLookupResponseItem < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::BulkIPSecurityLookupResponseItemSecurity }, optional: true, nullable: false
    end
  end
end
