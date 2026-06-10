# frozen_string_literal: true

module Apifreaks
  module Types
    # Object contains Bank and BIC details.
    class IbanValidateResponseBankData < Internal::Types::Model
      field :bic, -> { String }, optional: true, nullable: false

      field :bank, -> { String }, optional: true, nullable: false

      field :bank_code, -> { String }, optional: true, nullable: false

      field :branch_code, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :country_iso2, -> { String }, optional: false, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :address, -> { String }, optional: true, nullable: false

      field :account, -> { String }, optional: true, nullable: false

      field :sepa, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
