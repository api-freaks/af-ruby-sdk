# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponse < Internal::Types::Model
      field :email_response, -> { Internal::Types::Array[Apifreaks::Types::BulkEmailValidateResponseEmailResponseItem] }, optional: false, nullable: false, api_name: "emailResponse"
    end
  end
end
