# frozen_string_literal: true

module Apifreaks
  module Types
    class IPWhoisLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::IPWhoisLookupRequestFormat }, optional: true, nullable: false

      field :ip, -> { String }, optional: false, nullable: false
    end
  end
end
