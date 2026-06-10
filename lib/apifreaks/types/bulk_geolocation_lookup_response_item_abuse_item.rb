# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemAbuseItem < Internal::Types::Model
      field :route, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :handle, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :organization, -> { String }, optional: true, nullable: false

      field :role, -> { String }, optional: true, nullable: false

      field :kind, -> { String }, optional: true, nullable: false

      field :address, -> { String }, optional: true, nullable: false

      field :emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :phone_numbers, -> { Internal::Types::Array[String] }, optional: true, nullable: false
    end
  end
end
