# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfUploadBinaryResponse < Internal::Types::Model
      field :file_name, -> { String }, optional: true, nullable: false, api_name: "fileName"

      field :file_id, -> { String }, optional: false, nullable: false, api_name: "fileId"
    end
  end
end
