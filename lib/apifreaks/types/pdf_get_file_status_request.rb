# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfGetFileStatusRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::PdfGetFileStatusRequestFormat }, optional: true, nullable: false

      field :file_id, -> { String }, optional: false, nullable: false
    end
  end
end
