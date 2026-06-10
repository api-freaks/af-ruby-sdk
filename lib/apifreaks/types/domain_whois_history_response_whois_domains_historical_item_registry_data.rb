# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisHistoryResponseWhoisDomainsHistoricalItemRegistryData < Internal::Types::Model
      field :domain_name, -> { String }, optional: true, nullable: false

      field :query_time, -> { String }, optional: true, nullable: false

      field :whois_server, -> { String }, optional: true, nullable: false

      field :domain_registered, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemRegistryDataDomainRegistered }, optional: true, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :name_servers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :domain_status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :whois_raw_registry, -> { String }, optional: true, nullable: false

      field :domain_registrar, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemRegistryDataDomainRegistrar }, optional: true, nullable: false
    end
  end
end
