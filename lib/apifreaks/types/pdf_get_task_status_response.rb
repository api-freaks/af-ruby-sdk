# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfGetTaskStatusResponse < Internal::Types::Model
      field :task_id, -> { String }, optional: false, nullable: false, api_name: "taskId"

      field :status, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :zip_output_url, -> { String }, optional: true, nullable: false, api_name: "zipOutputUrl"

      field :zip_file_id, -> { String }, optional: true, nullable: false, api_name: "zipFileId"

      field :output_urls, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "outputUrls"

      field :output_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "outputIds"

      field :input_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "inputIds"

      field :error, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :expires_at, -> { String }, optional: true, nullable: false, api_name: "expiresAt"
    end
  end
end
