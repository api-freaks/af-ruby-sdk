# frozen_string_literal: true

module Apifreaks
  module Types
    # Registrar's abuse-reporting contact.
    class DomainWhoisLookupV2ResponseAbuseContact < Internal::Types::Model
      field :registrar_name, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :phone_number, -> { String }, optional: true, nullable: false
    end
  end
end
