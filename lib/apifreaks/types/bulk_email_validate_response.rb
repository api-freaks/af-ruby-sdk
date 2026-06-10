# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponse < Internal::Types::Model
      field :email_validation_responses, -> { Internal::Types::Array[Apifreaks::Types::BulkEmailValidateResponseEmailValidationResponsesItem] }, optional: true, nullable: false, api_name: "emailValidationResponses"
    end
  end
end
