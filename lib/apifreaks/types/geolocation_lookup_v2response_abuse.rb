# frozen_string_literal: true

module Apifreaks
  module Types
    # Abuse contact information for the IP.
    class GeolocationLookupV2ResponseAbuse < Internal::Types::Model
      field :route, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :kind, -> { String }, optional: true, nullable: false

      field :address, -> { String }, optional: true, nullable: false

      field :emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :phone_numbers, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
