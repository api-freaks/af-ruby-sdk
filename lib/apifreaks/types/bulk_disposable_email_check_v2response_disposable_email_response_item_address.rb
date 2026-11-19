# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Geolocation and security enrichment data for the IP address.
    class BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemAddress < Internal::Types::Model
      field :valid_ip_address, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "validIpAddress"

      field :location, -> { Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemAddressLocation }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemAddressSecurity }, optional: true, nullable: false
    end
  end
end
