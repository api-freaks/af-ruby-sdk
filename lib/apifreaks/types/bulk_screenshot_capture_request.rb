# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkScreenshotCaptureRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::BulkScreenshotCaptureRequestFormat }, optional: true, nullable: false

      field :urls, -> { Internal::Types::Array[Apifreaks::Types::BulkScreenshotCaptureRequestURLsItem] }, optional: false, nullable: false
    end
  end
end
