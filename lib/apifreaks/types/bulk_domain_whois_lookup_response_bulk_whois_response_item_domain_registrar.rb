# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainWhoisLookupResponseBulkWhoisResponseItemDomainRegistrar < Internal::Types::Model
      field :iana_id, -> { String }, optional: true, nullable: false

      field :registrar_name, -> { String }, optional: true, nullable: false

      field :whois_server, -> { String }, optional: true, nullable: false

      field :website_url, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :phone_number, -> { String }, optional: true, nullable: false
    end
  end
end
