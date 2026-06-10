# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseUserAgentEngine < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :version, -> { String }, optional: true, nullable: false

      field :version_major, -> { String }, optional: true, nullable: false
    end
  end
end
