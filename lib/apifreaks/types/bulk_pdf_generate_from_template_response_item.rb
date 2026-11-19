# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Result of a PDF generation request, containing the hosted URL of the generated PDF.
    class BulkPdfGenerateFromTemplateResponseItem < Internal::Types::Model
      field :template_id, -> { String }, optional: false, nullable: false

      field :pdf_url, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false

      field :expiration_time, -> { String }, optional: false, nullable: false
    end
  end
end
