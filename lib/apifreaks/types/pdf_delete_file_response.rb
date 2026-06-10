# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfDeleteFileResponse < Internal::Types::Model
      field :file_id, -> { String }, optional: false, nullable: false, api_name: "fileId"

      field :success, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
