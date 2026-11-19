# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # PDF output options. Applies when file_type is PDF.
    class BulkScreenshotCaptureRequestURLsItemPdfOptions < Internal::Types::Model
      field :format, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemPdfOptionsFormat }, optional: true, nullable: false

      field :landscape, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :page_range, -> { String }, optional: true, nullable: false

      field :media, -> { Apifreaks::Types::BulkScreenshotCaptureRequestURLsItemPdfOptionsMedia }, optional: true, nullable: false

      field :print_background, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
