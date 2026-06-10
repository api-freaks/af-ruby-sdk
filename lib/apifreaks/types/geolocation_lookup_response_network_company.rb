# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseNetworkCompany < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: true, nullable: false
    end
  end
end
