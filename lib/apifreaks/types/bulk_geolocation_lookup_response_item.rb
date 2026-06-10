# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItem < Internal::Types::Model
      field :ip, -> { String }, optional: true, nullable: false

      field :hostname, -> { String }, optional: true, nullable: false

      field :location, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemLocation }, optional: true, nullable: false

      field :country_metadata, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemCountryMetadata }, optional: true, nullable: false

      field :network, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemNetwork }, optional: true, nullable: false

      field :currency, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemCurrency }, optional: true, nullable: false

      field :security, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemSecurity }, optional: true, nullable: false

      field :abuse, -> { Internal::Types::Array[Apifreaks::Types::BulkGeolocationLookupResponseItemAbuseItem] }, optional: true, nullable: false

      field :time_zone, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemTimeZone }, optional: true, nullable: false

      field :user_agent, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemUserAgent }, optional: true, nullable: false
    end
  end
end
