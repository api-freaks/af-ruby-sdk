# frozen_string_literal: true

module Apifreaks
  module Types
    class VatRateByIPRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::VatRateByIPRequestFormat }, optional: true, nullable: false

      field :ip_address, -> { String }, optional: true, nullable: false, api_name: "ipAddress"
    end
  end
end
