# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisReverseRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainWhoisReverseRequestFormat }, optional: true, nullable: false

      field :keyword, -> { String }, optional: true, nullable: false

      field :email, -> { String }, optional: true, nullable: false

      field :owner, -> { String }, optional: true, nullable: false

      field :company, -> { String }, optional: true, nullable: false

      field :exact, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :mode, -> { Apifreaks::Types::DomainWhoisReverseRequestMode }, optional: true, nullable: false

      field :page, -> { Integer }, optional: true, nullable: false
    end
  end
end
