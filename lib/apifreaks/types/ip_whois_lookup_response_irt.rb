# frozen_string_literal: true

module Apifreaks
  module Types
    class IPWhoisLookupResponseIrt < Internal::Types::Model
      field :handle, -> { String }, optional: true, nullable: false

      field :address, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :street, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :district, -> { String }, optional: true, nullable: false

      field :state, -> { String }, optional: true, nullable: false

      field :zip_code, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :email, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :abuse_mailbox, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :fax_no, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :organizations, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :admin_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :tech_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :remarks, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :signature, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :encryption, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :auth, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :notify, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :irt_nfy, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_by, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_ref, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :date_created, -> { String }, optional: true, nullable: false

      field :date_updated, -> { String }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false
    end
  end
end
