# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkEmailValidateRequestFormat }, optional: true, nullable: false

      field :email_data, -> { Internal::Types::Array[Apifreaks::Types::BulkEmailValidateRequestEmailDataItem] }, optional: false, nullable: false, api_name: "emailData"
    end
  end
end
