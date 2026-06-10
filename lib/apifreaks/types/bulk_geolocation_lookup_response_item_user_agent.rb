# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemUserAgent < Internal::Types::Model
      field :user_agent_string, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :version, -> { String }, optional: true, nullable: false

      field :version_major, -> { String }, optional: true, nullable: false

      field :device, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemUserAgentDevice }, optional: true, nullable: false

      field :engine, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemUserAgentEngine }, optional: true, nullable: false

      field :operating_system, -> { Apifreaks::Types::BulkGeolocationLookupResponseItemUserAgentOperatingSystem }, optional: true, nullable: false
    end
  end
end
