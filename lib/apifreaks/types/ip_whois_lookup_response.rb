# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class IPWhoisLookupResponse < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :ip_address, -> { String }, optional: true, nullable: false

      field :query_time, -> { String }, optional: true, nullable: false

      field :whois_server, -> { String }, optional: true, nullable: false

      field :inet_nums, -> { Internal::Types::Array[Apifreaks::Types::IPWhoisLookupResponseInetNumsItem] }, optional: true, nullable: false

      field :irt, -> { Apifreaks::Types::IPWhoisLookupResponseIrt }, optional: true, nullable: false

      field :organization, -> { Apifreaks::Types::IPWhoisLookupResponseOrganization }, optional: true, nullable: false

      field :technical_contacts, -> { Internal::Types::Array[Apifreaks::Types::IPWhoisLookupResponseTechnicalContactsItem] }, optional: true, nullable: false

      field :abuse_contacts, -> { Internal::Types::Array[Apifreaks::Types::IPWhoisLookupResponseAbuseContactsItem] }, optional: true, nullable: false

      field :administrative_contacts, -> { Internal::Types::Array[Apifreaks::Types::IPWhoisLookupResponseAdministrativeContactsItem] }, optional: true, nullable: false

      field :whois_raw_response, -> { String }, optional: true, nullable: false

      field :routes, -> { Internal::Types::Array[Apifreaks::Types::IPWhoisLookupResponseRoutesItem] }, optional: true, nullable: false

      field :r_whois_raw_response, -> { String }, optional: true, nullable: true
    end
  end
end
