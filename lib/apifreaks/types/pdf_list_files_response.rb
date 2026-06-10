# frozen_string_literal: true

module Apifreaks
  module Types
    class PdfListFilesResponse < Internal::Types::Model
      field :files, -> { Internal::Types::Array[Apifreaks::Types::PdfListFilesResponseFilesItem] }, optional: false, nullable: false
    end
  end
end
