# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfUploadBinaryRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::PdfUploadBinaryRequestFormat }, optional: true, nullable: false

      field :file_name, -> { String }, optional: false, nullable: false
    end
  end
end
