# frozen_string_literal: true

module Apifreaks
  module Types
    class UserAgentLookupResponseDevice < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false

      field :brand, -> { String }, optional: false, nullable: false

      field :cpu, -> { String }, optional: false, nullable: false
    end
  end
end
