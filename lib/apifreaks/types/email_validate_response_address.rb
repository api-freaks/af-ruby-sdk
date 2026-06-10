# frozen_string_literal: true

module Apifreaks
  module Types
    class EmailValidateResponseAddress < Internal::Types::Model
      field :security, -> { Apifreaks::Types::EmailValidateResponseAddressSecurity }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::EmailValidateResponseAddressLocation }, optional: true, nullable: false

      field :valid_ip_address, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "validIpAddress"
    end
  end
end
