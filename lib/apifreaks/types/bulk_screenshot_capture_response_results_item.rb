# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkScreenshotCaptureResponseResultsItem < Internal::Types::Model
      field :status, -> { String }, optional: false, nullable: false

      field :error_message, -> { String }, optional: true, nullable: true

      field :url, -> { Apifreaks::Types::BulkScreenshotCaptureResponseResultsItemURL }, optional: false, nullable: false
    end
  end
end
