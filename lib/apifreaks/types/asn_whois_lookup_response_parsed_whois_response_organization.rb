# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponseParsedWhoisResponseOrganization < Internal::Types::Model
      field :handle, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :address, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :street, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :zip_code, -> { String }, optional: true, nullable: false

      field :country, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :address_country, -> { String }, optional: true, nullable: false, api_name: "addressCountry"

      field :date_created, -> { String }, optional: true, nullable: false

      field :date_updated, -> { String }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false
    end
  end
end
