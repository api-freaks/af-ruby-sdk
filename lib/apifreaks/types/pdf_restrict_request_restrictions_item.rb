# frozen_string_literal: true

module Apifreaks
  module Types
    module PdfRestrictRequestRestrictionsItem
      extend Apifreaks::Internal::Types::Enum

      PRINT_HIGH = "print_high"
      PRINT_LOW = "print_low"
      EDIT_DOCUMENT_ASSEMBLY = "edit_document_assembly"
      FILL_FORM_FIELDS = "fill_form_fields"
      EDIT_ANNOTATIONS = "edit_annotations"
      MODIFY_CONTENT = "modify_content"
      COPY_AND_EXTRACT_CONTENT = "copy_and_extract_content"
      USE_ACCESSIBILITY = "use_accessibility"
    end
  end
end
