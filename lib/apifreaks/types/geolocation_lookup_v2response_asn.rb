# frozen_string_literal: true

module Apifreaks
  module Types
    # Autonomous System details for the IP.
    class GeolocationLookupV2ResponseAsn < Internal::Types::Model
      field :as_number, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: true, nullable: false

      field :date_allocated, -> { String }, optional: true, nullable: false

      field :rir, -> { String }, optional: true, nullable: false
    end
  end
end
