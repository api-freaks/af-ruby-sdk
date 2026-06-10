# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkScreenshotCaptureResponseMetaData < Internal::Types::Model
      field :total_urls, -> { Integer }, optional: false, nullable: false

      field :successful_urls, -> { Integer }, optional: false, nullable: false

      field :failed_urls, -> { Integer }, optional: false, nullable: false
    end
  end
end
