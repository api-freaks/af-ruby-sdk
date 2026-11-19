# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class PdfUploadResourcesResponse < Internal::Types::Model
      field :files, -> { Internal::Types::Array[Apifreaks::Types::PdfUploadResourcesResponseFilesItem] }, optional: false, nullable: false
    end
  end
end
