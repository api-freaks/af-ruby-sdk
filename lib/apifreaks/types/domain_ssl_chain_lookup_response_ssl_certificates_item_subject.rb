# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainSslChainLookupResponseSslCertificatesItemSubject < Internal::Types::Model
      field :common_name, -> { String }, optional: false, nullable: false, api_name: "commonName"

      field :organization, -> { String }, optional: true, nullable: false

      field :organizational_unit, -> { String }, optional: true, nullable: false, api_name: "organizationalUnit"

      field :locality, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :inc_country, -> { String }, optional: true, nullable: false, api_name: "incCountry"

      field :inc_state, -> { String }, optional: true, nullable: false, api_name: "incState"

      field :business_category, -> { String }, optional: true, nullable: false, api_name: "businessCategory"

      field :street, -> { String }, optional: true, nullable: false

      field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

      field :serial_number, -> { String }, optional: true, nullable: false, api_name: "serialNumber"
    end
  end
end
