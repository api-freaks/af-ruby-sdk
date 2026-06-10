# frozen_string_literal: true

module Apifreaks
  module Types
    class VatValidateResponseCompany < Internal::Types::Model
      field :company_name, -> { String }, optional: false, nullable: false

      field :company_address, -> { String }, optional: false, nullable: false
    end
  end
end
