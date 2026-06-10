# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkScreenshotCaptureResponseResultsItem < Internal::Types::Model
      field :status, -> { String }, optional: false, nullable: false

      field :error_message, -> { String }, optional: true, nullable: false

      field :url, -> { Apifreaks::Types::BulkScreenshotCaptureResponseResultsItemURL }, optional: false, nullable: false
    end
  end
end
