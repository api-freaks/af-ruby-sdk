# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailResponseItemAddress < Internal::Types::Model
      field :security, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemAddressSecurity }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemAddressLocation }, optional: true, nullable: false

      field :valid_ip_address, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "validIpAddress"
    end
  end
end
