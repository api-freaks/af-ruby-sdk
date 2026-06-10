# frozen_string_literal: true

module Apifreaks
  module Types
    class IPWhoisLookupResponseInetNumsItem < Internal::Types::Model
      field :start_ip, -> { String }, optional: true, nullable: false

      field :end_ip, -> { String }, optional: true, nullable: false

      field :cidr, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :net_name, -> { String }, optional: true, nullable: false

      field :net_handle, -> { String }, optional: true, nullable: false

      field :description, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :countries, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :geofeed, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :languages, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :sponsoring_organization, -> { String }, optional: true, nullable: false

      field :admin_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :tech_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :abuse_contacts, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :remarks, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :assignment_size, -> { String }, optional: true, nullable: false

      field :notify, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_by, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_lower, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_domains, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_routes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :mnt_irt, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :date_created, -> { String }, optional: true, nullable: false

      field :date_updated, -> { String }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false

      field :parents, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
