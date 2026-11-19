# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkDisposableEmailCheckV2Request < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkDisposableEmailCheckV2RequestFormat }, optional: true, nullable: false

      field :email_data, -> { Internal::Types::Array[Apifreaks::Types::BulkDisposableEmailCheckV2RequestEmailDataItem] }, optional: false, nullable: false, api_name: "emailData"
    end
  end
end
