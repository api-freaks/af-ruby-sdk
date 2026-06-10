# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponseParsedWhoisResponseAutNumsItem < Internal::Types::Model
      field :aut_num, -> { String }, optional: false, nullable: false

      field :as_handle, -> { String }, optional: false, nullable: false

      field :as_name, -> { String }, optional: false, nullable: false

      field :tech_contacts, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :abuse_contacts, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :date_created, -> { String }, optional: false, nullable: false

      field :date_updated, -> { String }, optional: false, nullable: false

      field :source, -> { String }, optional: false, nullable: false

      field :description, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :member_of, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :import_via, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :import, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mp_import, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :export_via, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :export, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mp_export, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :default, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mp_default, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :sponsoring_organization, -> { String }, optional: true, nullable: false

      field :admin_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
