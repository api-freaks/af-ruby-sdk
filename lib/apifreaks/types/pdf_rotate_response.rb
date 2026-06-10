# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfRotateResponse < Internal::Types::Model
      field :task_id, -> { String }, optional: false, nullable: false, api_name: "taskId"

      field :input_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "inputIds"
    end
  end
end
