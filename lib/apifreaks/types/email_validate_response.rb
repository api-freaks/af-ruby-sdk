# frozen_string_literal: true

module Apifreaks
  module Types
    class EmailValidateResponse < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false

      field :valid_email, -> { Apifreaks::Types::EmailValidateResponseValidEmail }, optional: false, nullable: false, api_name: "validEmail"

      field :valid_syntax, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validSyntax"

      field :domain, -> { Apifreaks::Types::EmailValidateResponseDomain }, optional: false, nullable: false

      field :account, -> { Apifreaks::Types::EmailValidateResponseAccount }, optional: false, nullable: false

      field :dns, -> { Apifreaks::Types::EmailValidateResponseDNS }, optional: false, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :address, -> { Apifreaks::Types::EmailValidateResponseAddress }, optional: true, nullable: false
    end
  end
end
