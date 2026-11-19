# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Geolocation and security enrichment data for the IP address.
    class DisposableEmailCheckV2ResponseAddress < Internal::Types::Model
      field :valid_ip_address, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "validIpAddress"

      field :location, -> { Apifreaks::Types::DisposableEmailCheckV2ResponseAddressLocation }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::DisposableEmailCheckV2ResponseAddressSecurity }, optional: true, nullable: false
    end
  end
end
