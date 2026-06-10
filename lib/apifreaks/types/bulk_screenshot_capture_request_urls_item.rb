# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkScreenshotCaptureRequestURLsItem < Internal::Types::Model
      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
