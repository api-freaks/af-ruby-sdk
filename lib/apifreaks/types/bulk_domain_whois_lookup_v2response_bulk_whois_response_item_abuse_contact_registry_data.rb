# frozen_string_literal: true

module Apifreaks
  module Types
    # Registry-level (as opposed to registrar-level) WHOIS data, sourced directly from the TLD registry.
    class BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactRegistryData < Internal::Types::Model
      field :domain_name, -> { String }, optional: true, nullable: false

      field :query_time, -> { String }, optional: true, nullable: false

      field :whois_server, -> { String }, optional: true, nullable: false

      field :domain_registered, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactRegistryDataDomainRegistered }, optional: true, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :name_servers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :domain_status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :whois_raw_registery, -> { String }, optional: true, nullable: false

      field :domain_registrar, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactRegistryDataDomainRegistrar }, optional: true, nullable: false
    end
  end
end
