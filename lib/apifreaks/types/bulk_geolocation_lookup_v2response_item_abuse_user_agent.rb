# frozen_string_literal: true

module Apifreaks
  module Types
    # Parsed User-Agent details from the request.
    class BulkGeolocationLookupV2ResponseItemAbuseUserAgent < Internal::Types::Model
      field :user_agent_string, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :version, -> { String }, optional: true, nullable: false

      field :version_major, -> { String }, optional: true, nullable: false

      field :device, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseUserAgentDevice }, optional: true, nullable: false

      field :engine, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseUserAgentEngine }, optional: true, nullable: false

      field :operating_system, -> { Apifreaks::Types::BulkGeolocationLookupV2ResponseItemAbuseUserAgentOperatingSystem }, optional: true, nullable: false
    end
  end
end
