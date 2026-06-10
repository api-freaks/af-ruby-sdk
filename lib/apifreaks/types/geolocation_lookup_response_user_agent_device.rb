# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseUserAgentDevice < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :brand, -> { String }, optional: true, nullable: false

      field :cpu, -> { String }, optional: true, nullable: false
    end
  end
end
