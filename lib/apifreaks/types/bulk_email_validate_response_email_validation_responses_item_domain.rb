# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailValidationResponsesItemDomain < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :disposable, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :spam, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :free, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :catch_all, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "catchAll"

      field :valid_domain, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validDomain"
    end
  end
end
