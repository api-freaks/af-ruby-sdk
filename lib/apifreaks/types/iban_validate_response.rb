# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class IbanValidateResponse < Internal::Types::Model
      field :valid, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :iban, -> { String }, optional: false, nullable: false

      field :validation, -> { Apifreaks::Types::IbanValidateResponseValidation }, optional: false, nullable: false

      field :bank_data, -> { Apifreaks::Types::IbanValidateResponseBankData }, optional: false, nullable: false
    end
  end
end
