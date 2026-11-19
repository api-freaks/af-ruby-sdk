# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class PdfListFilesResponse < Internal::Types::Model
      field :files, -> { Internal::Types::Array[Apifreaks::Types::PdfListFilesResponseFilesItem] }, optional: false, nullable: false
    end
  end
end
