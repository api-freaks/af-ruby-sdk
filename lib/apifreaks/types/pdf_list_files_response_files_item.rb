# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfListFilesResponseFilesItem < Internal::Types::Model
      field :file_id, -> { String }, optional: false, nullable: false, api_name: "fileId"

      field :file_name, -> { String }, optional: false, nullable: false, api_name: "fileName"

      field :file_type, -> { String }, optional: true, nullable: false, api_name: "fileType"

      field :file_creation_time, -> { String }, optional: true, nullable: false, api_name: "fileCreationTime"

      field :file_deletion_time, -> { String }, optional: true, nullable: false, api_name: "fileDeletionTime"
    end
  end
end
