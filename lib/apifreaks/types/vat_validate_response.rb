# frozen_string_literal: true

module Apifreaks
  module Types
    class VatValidateResponse < Internal::Types::Model
      field :country_code, -> { String }, optional: false, nullable: false

      field :vat_number, -> { String }, optional: false, nullable: false

      field :requester_country_code, -> { String }, optional: true, nullable: false

      field :requester_vat_number, -> { String }, optional: true, nullable: false

      field :requested_at, -> { String }, optional: false, nullable: false

      field :validation, -> { Apifreaks::Types::VatValidateResponseValidation }, optional: false, nullable: false

      field :company, -> { Apifreaks::Types::VatValidateResponseCompany }, optional: false, nullable: false
    end
  end
end
