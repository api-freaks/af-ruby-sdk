# frozen_string_literal: true

module Apifreaks
  module Types
    class EmailValidateResponseDNS < Internal::Types::Model
      field :mx_records, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "mxRecords"

      field :a_records, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "aRecords"
    end
  end
end
