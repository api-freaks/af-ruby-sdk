# frozen_string_literal: true

module Apifreaks
  module Types
    class UserAgentLookupResponseEngine < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: false, nullable: false

      field :version_major, -> { String }, optional: false, nullable: false
    end
  end
end
