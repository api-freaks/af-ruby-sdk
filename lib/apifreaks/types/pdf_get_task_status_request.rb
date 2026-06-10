# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfGetTaskStatusRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::PdfGetTaskStatusRequestFormat }, optional: true, nullable: false

      field :task_id, -> { String }, optional: false, nullable: false
    end
  end
end
