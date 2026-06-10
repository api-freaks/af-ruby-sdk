# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfCompressRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::PdfCompressRequestFormat }, optional: true, nullable: false

      field :file_id, -> { String }, optional: true, nullable: false

      field :output, -> { String }, optional: true, nullable: false

      field :compression_level, -> { Apifreaks::Types::PdfCompressRequestCompressionLevel }, optional: false, nullable: false

      field :destroy, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :webhook_url, -> { String }, optional: true, nullable: false

      field :webhook_failure_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :webhook_authorization, -> { String }, optional: true, nullable: false, api_name: "X-Webhook-Authorization"
    end
  end
end
