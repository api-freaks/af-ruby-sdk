# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainDNSLookupRequestFormat }, optional: true, nullable: false

      field :host_name, -> { String }, optional: true, nullable: false, api_name: "host-name"

      field :ip_address, -> { String }, optional: true, nullable: false, api_name: "ipAddress"

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
