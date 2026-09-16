# frozen_string_literal: true

module Apifreaks
  module Types
    # Registrar of record for a domain, as published by either the registrar or the registry.
    class DomainWhoisLookupV2ResponseRegistryDataDomainRegistrar < Internal::Types::Model
      field :iana_id, -> { String }, optional: true, nullable: false

      field :id, -> { String }, optional: true, nullable: false

      field :id_type, -> { String }, optional: true, nullable: false

      field :handle, -> { String }, optional: true, nullable: false

      field :registry_id, -> { String }, optional: true, nullable: false

      field :authoritative_registry_name, -> { String }, optional: true, nullable: false

      field :organization_number, -> { String }, optional: true, nullable: false

      field :is_sponsor, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :status, -> { String }, optional: true, nullable: false

      field :registrar_name, -> { String }, optional: true, nullable: false

      field :normalized_name, -> { String }, optional: true, nullable: false

      field :whois_server, -> { String }, optional: true, nullable: false

      field :rdap_server, -> { String }, optional: true, nullable: false

      field :website_url, -> { String }, optional: true, nullable: false

      field :email_address, -> { String }, optional: true, nullable: false

      field :phone_number, -> { String }, optional: true, nullable: false
    end
  end
end
