# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponseContacts < Internal::Types::Model
      field :email_contacts, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "emailContacts"

      field :abuse_contacts, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "abuseContacts"
    end
  end
end
