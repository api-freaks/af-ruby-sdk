# frozen_string_literal: true

module Apifreaks
  module Types
    # Current WHOIS registration record for the requested domain.
    class DomainWhoisLookupV2Response < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false

      field :query_time, -> { String }, optional: false, nullable: false

      field :whois_server, -> { String }, optional: false, nullable: false

      field :domain_registered, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseDomainRegistered }, optional: false, nullable: false

      field :secure_dns, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :domain_handle, -> { String }, optional: true, nullable: false

      field :create_date, -> { String }, optional: true, nullable: false

      field :update_date, -> { String }, optional: true, nullable: false

      field :expiry_date, -> { String }, optional: true, nullable: false

      field :domain_registrar, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseDomainRegistrar }, optional: true, nullable: false

      field :reseller_contact, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseResellerContact }, optional: true, nullable: false

      field :registrant_contact, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseRegistrantContact }, optional: true, nullable: false

      field :administrative_contact, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseAdministrativeContact }, optional: true, nullable: false

      field :technical_contact, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseTechnicalContact }, optional: true, nullable: false

      field :billing_contact, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseBillingContact }, optional: true, nullable: false

      field :abuse_contact, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseAbuseContact }, optional: true, nullable: false

      field :eligibility_info, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseEligibilityInfo }, optional: true, nullable: false

      field :name_servers, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :domain_status, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :whois_raw_domain, -> { String }, optional: true, nullable: false

      field :registry_data, -> { Apifreaks::Types::DomainWhoisLookupV2ResponseRegistryData }, optional: true, nullable: false
    end
  end
end
