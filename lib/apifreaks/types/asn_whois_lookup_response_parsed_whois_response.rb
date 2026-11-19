# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class AsnWhoisLookupResponseParsedWhoisResponse < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :whois_server, -> { String }, optional: false, nullable: false

      field :aut_nums, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseAutNumsItem] }, optional: false, nullable: false

      field :organization, -> { Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseOrganization }, optional: false, nullable: false

      field :technical_contacts, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseTechnicalContactsItem] }, optional: false, nullable: false

      field :abuse_contacts, -> { Internal::Types::Array[Apifreaks::Types::AsnWhoisLookupResponseParsedWhoisResponseAbuseContactsItem] }, optional: false, nullable: false

      field :query_time, -> { String }, optional: true, nullable: false

      field :r_whois_raw_response, -> { String }, optional: true, nullable: false

      field :whois_raw_response, -> { String }, optional: true, nullable: false
    end
  end
end
