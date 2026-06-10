# frozen_string_literal: true

module Apifreaks
  module Types
    class SwiftCodeLookupResponse < Internal::Types::Model
      field :swift_code, -> { String }, optional: false, nullable: false, api_name: "swiftCode"

      field :country_code, -> { String }, optional: false, nullable: false, api_name: "countryCode"

      field :bank_address, -> { String }, optional: false, nullable: false, api_name: "bankAddress"

      field :bank_code, -> { String }, optional: false, nullable: false, api_name: "bankCode"

      field :bank_name, -> { String }, optional: false, nullable: false, api_name: "bankName"

      field :city, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false
    end
  end
end
