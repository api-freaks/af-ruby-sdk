# frozen_string_literal: true

module Apifreaks
  module Types
    class VatValidateResponseValidation < Internal::Types::Model
      field :is_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :consultation_number, -> { String }, optional: true, nullable: false

      field :consultation_authority, -> { String }, optional: false, nullable: false
    end
  end
end
