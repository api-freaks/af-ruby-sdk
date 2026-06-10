# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisHistoryResponseWhoisDomainsHistoricalItem < Internal::Types::Model
      field :num, -> { Integer }, optional: false, nullable: false

      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false

      field :query_time, -> { String }, optional: false, nullable: false

      field :whois_server, -> { String }, optional: false, nullable: false

      field :domain_registered, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemDomainRegistered }, optional: false, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :domain_registrar, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemDomainRegistrar }, optional: true, nullable: false

      field :reseller_contact, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemResellerContact }, optional: true, nullable: false

      field :registrant_contact, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemRegistrantContact }, optional: true, nullable: false

      field :administrative_contact, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemAdministrativeContact }, optional: true, nullable: false

      field :technical_contact, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemTechnicalContact }, optional: true, nullable: false

      field :billing_contact, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemBillingContact }, optional: true, nullable: false

      field :name_servers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :domain_status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :whois_raw_domain, -> { String }, optional: true, nullable: false

      field :registry_data, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItemRegistryData }, optional: true, nullable: false
    end
  end
end
