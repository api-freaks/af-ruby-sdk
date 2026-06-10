# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfDownloadResourceRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::PdfDownloadResourceRequestFormat }, optional: true, nullable: false

      field :resource_id, -> { String }, optional: false, nullable: false
    end
  end
end
