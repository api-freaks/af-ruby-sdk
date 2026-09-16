# frozen_string_literal: true

module Apifreaks
  module Types
    # Geolocation and threat intelligence result for one successfully resolved IP address.
    class BulkGeolocationLookupV2ResponseItemAbuse < Internal::Types::Model
      field :ip, -> { String }, optional: false, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :hostname, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseLocation }, optional: true, nullable: false

      field :country_metadata, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseCountryMetadata }, optional: true, nullable: false

      field :network, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseNetwork }, optional: true, nullable: false

      field :asn, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseAsn }, optional: true, nullable: false

      field :company, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseCompany }, optional: true, nullable: false

      field :currency, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseCurrency }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseSecurity }, optional: true, nullable: false

      field :abuse, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseAbuse }, optional: true, nullable: false

      field :time_zone, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseTimeZone }, optional: true, nullable: false

      field :user_agent, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseUserAgent }, optional: true, nullable: false
    end
  end
end
