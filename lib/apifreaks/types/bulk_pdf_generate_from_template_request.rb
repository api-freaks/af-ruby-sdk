# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkPdfGenerateFromTemplateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :template_id, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: true, nullable: false
    end
  end
end
