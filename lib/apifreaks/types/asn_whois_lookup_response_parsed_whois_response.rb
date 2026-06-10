# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponseParsedWhoisResponse < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :whois_server, -> { String }, optional: false, nullable: false

      field :aut_nums, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseAutNumsItem] }, optional: false, nullable: false

      field :organization, -> { Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseOrganization }, optional: false, nullable: false

      field :technical_contacts, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseTechnicalContactsItem] }, optional: false, nullable: false

      field :abuse_contacts, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseAbuseContactsItem] }, optional: false, nullable: false
    end
  end
end
