# frozen_string_literal: true

module Apifreaks
  module Types
    # Current WHOIS registration record for one successfully resolved domain.
    class BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContact < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false

      field :query_time, -> { String }, optional: false, nullable: false

      field :whois_server, -> { String }, optional: false, nullable: false

      field :domain_registered, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactDomainRegistered }, optional: false, nullable: false

      field :secure_dns, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :domain_handle, -> { String }, optional: true, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :domain_registrar, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactDomainRegistrar }, optional: true, nullable: false

      field :reseller_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactResellerContact }, optional: true, nullable: false

      field :registrant_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactRegistrantContact }, optional: true, nullable: false

      field :administrative_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactAdministrativeContact }, optional: true, nullable: false

      field :technical_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactTechnicalContact }, optional: true, nullable: false

      field :billing_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactBillingContact }, optional: true, nullable: false

      field :abuse_contact, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactAbuseContact }, optional: true, nullable: false

      field :eligibility_info, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactEligibilityInfo }, optional: true, nullable: false

      field :name_servers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :domain_status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :whois_raw_domain, -> { String }, optional: true, nullable: false

      field :registry_data, -> { Apifreaks::Types::BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactRegistryData }, optional: true, nullable: false
    end
  end
end
