# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailResponseItem < Internal::Types::Model
      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :reason, -> { String }, optional: true, nullable: false

      field :valid_email, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemValidEmail }, optional: false, nullable: false, api_name: "validEmail"

      field :valid_syntax, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validSyntax"

      field :domain, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemDomain }, optional: false, nullable: false

      field :account, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemAccount }, optional: false, nullable: false

      field :dns, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemDNS }, optional: false, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :address, -> { Apifreaks::Types::BulkEmailValidateResponseEmailResponseItemAddress }, optional: true, nullable: false
    end
  end
end
