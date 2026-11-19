# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class IPWhoisLookupResponseAbuseContactsItem < Internal::Types::Model
      field :handle, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :email, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false

      field :abuse_mailbox, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :address, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :admin_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :city, -> { String }, optional: true, nullable: true

      field :country, -> { String }, optional: true, nullable: true

      field :date_created, -> { String }, optional: true, nullable: true

      field :date_updated, -> { String }, optional: true, nullable: true

      field :district, -> { String }, optional: true, nullable: true

      field :fax_no, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :mnt_by, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :mnt_ref, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :notify, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :organizations, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :remarks, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :state, -> { String }, optional: true, nullable: true

      field :street, -> { String }, optional: true, nullable: true

      field :tech_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: true

      field :zip_code, -> { String }, optional: true, nullable: true
    end
  end
end
