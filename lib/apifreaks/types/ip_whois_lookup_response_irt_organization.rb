# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Organization object containing the registrant's handle, name, address, contact details, and linked
    # admin/tech/abuse contacts.
    class IPWhoisLookupResponseIrtOrganization < Internal::Types::Model
      field :handle, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: true, nullable: true

      field :description, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :address, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :street, -> { String }, optional: true, nullable: true

      field :city, -> { String }, optional: true, nullable: true

      field :district, -> { String }, optional: true, nullable: true

      field :state, -> { String }, optional: true, nullable: true

      field :zip_code, -> { String }, optional: true, nullable: true

      field :country, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :latitude, -> { Float }, optional: true, nullable: true

      field :longitude, -> { Float }, optional: true, nullable: true

      field :email, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :abuse_mailbox, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :fax_no, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :admin_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :tech_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :abuse_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :remarks, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :notify, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :ref_nfy, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :mnt_by, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :mnt_ref, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :date_created, -> { String }, optional: true, nullable: true

      field :date_updated, -> { String }, optional: true, nullable: true

      field :source, -> { String }, optional: false, nullable: false
    end
  end
end
