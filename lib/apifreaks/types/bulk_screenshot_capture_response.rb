# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkScreenshotCaptureResponse < Internal::Types::Model
      field :status, -> { String }, optional: false, nullable: false

      field :meta_data, -> { Apifreaks::Types::BulkScreenshotCaptureResponseMetaData }, optional: false, nullable: false

      field :results, -> { Internal::Types::Array[Apifreaks::Types::BulkScreenshotCaptureResponseResultsItem] }, optional: false, nullable: false
    end
  end
end
