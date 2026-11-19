# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfGenerateFromTemplateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :template_id, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: true, nullable: false

      field :data_url, -> { String }, optional: true, nullable: false

      field :body, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
    end
  end
end
