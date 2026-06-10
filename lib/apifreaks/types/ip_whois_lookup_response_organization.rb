# frozen_string_literal: true

module Apifreaks
  module Types
    class IPWhoisLookupResponseOrganization < Internal::Types::Model
      field :handle, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :description, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :address, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :street, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :district, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :zip_code, -> { String }, optional: true, nullable: false

      field :country, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :email, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :abuse_mailbox, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :fax_no, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :organizations, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :admin_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :tech_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :abuse_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :remarks, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
