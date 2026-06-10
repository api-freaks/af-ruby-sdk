# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDomainWhoisLookupResponseBulkWhoisResponseItem < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :domain_name, -> { String }, optional: true, nullable: false

      field :query_time, -> { String }, optional: true, nullable: false

      field :whois_server, -> { String }, optional: true, nullable: false

      field :domain_registered, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemDomainRegistered }, optional: true, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :domain_registrar, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemDomainRegistrar }, optional: true, nullable: false

      field :reseller_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemResellerContact }, optional: true, nullable: false

      field :registrant_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemRegistrantContact }, optional: true, nullable: false

      field :administrative_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemAdministrativeContact }, optional: true, nullable: false

      field :technical_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemTechnicalContact }, optional: true, nullable: false

      field :billing_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemBillingContact }, optional: true, nullable: false

      field :name_servers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :domain_status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :whois_raw_domain, -> { String }, optional: true, nullable: false

      field :registry_data, -> { Apifreaks::Types::BulkDomainWhoisLookupResponseBulkWhoisResponseItemRegistryData }, optional: true, nullable: false
    end
  end
end
