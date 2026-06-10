# frozen_string_literal: true

module Apifreaks
  module Types
    # Object contains IBAN validation details.
    class IbanValidateResponseValidation < Internal::Types::Model
      field :is_alpha_numeric, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_iban_supported_country, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_valid_length, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_valid_structure, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_iban_check_digit_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :bban, -> { String }, optional: true, nullable: false
    end
  end
end
