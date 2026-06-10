# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailValidationResponsesItemAddress < Internal::Types::Model
      field :security, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemAddressSecurity }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemAddressLocation }, optional: true, nullable: false

      field :valid_ip_address, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "validIpAddress"
    end
  end
end
