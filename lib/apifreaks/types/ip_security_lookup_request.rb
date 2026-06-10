# frozen_string_literal: true

module Apifreaks
  module Types
    class IPSecurityLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::IPSecurityLookupRequestFormat }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :fields, -> { String }, optional: true, nullable: false

      field :excludes, -> { String }, optional: true, nullable: false
    end
  end
end
