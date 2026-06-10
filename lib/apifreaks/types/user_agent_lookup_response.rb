# frozen_string_literal: true

module Apifreaks
  module Types
    class UserAgentLookupResponse < Internal::Types::Model
      field :user_agent_string, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: false, nullable: false

      field :version_major, -> { String }, optional: false, nullable: false

      field :device, -> { Apifreaks::Types::UserAgentLookupResponseDevice }, optional: false, nullable: false

      field :engine, -> { Apifreaks::Types::UserAgentLookupResponseEngine }, optional: false, nullable: false

      field :operating_system, -> { Apifreaks::Types::UserAgentLookupResponseOperatingSystem }, optional: false, nullable: false
    end
  end
end
