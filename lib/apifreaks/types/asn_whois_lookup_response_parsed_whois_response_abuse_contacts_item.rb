# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class AsnWhoisLookupResponseParsedWhoisResponseAbuseContactsItem < Internal::Types::Model
      field :handle, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false

      field :email, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :source, -> { String }, optional: true, nullable: false
    end
  end
end
