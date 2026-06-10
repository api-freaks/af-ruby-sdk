# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailValidationResponsesItem < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false

      field :valid_email, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemValidEmail }, optional: false, nullable: false, api_name: "validEmail"

      field :valid_syntax, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validSyntax"

      field :domain, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemDomain }, optional: false, nullable: false

      field :account, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemAccount }, optional: false, nullable: false

      field :dns, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemDNS }, optional: false, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :address, -> { Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItemAddress }, optional: true, nullable: false
    end
  end
end
