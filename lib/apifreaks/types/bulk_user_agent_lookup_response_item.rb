# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkUserAgentLookupResponseItem < Internal::Types::Model
      field :user_agent_string, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: false, nullable: false

      field :version_major, -> { String }, optional: false, nullable: false

      field :device, -> { Apifreaks::Types::BulkUserAgentLookupResponseItemDevice }, optional: false, nullable: false

      field :engine, -> { Apifreaks::Types::BulkUserAgentLookupResponseItemEngine }, optional: false, nullable: false

      field :operating_system, -> { Apifreaks::Types::BulkUserAgentLookupResponseItemOperatingSystem }, optional: false, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
