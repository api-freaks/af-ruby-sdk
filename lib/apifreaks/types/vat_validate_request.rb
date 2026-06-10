# frozen_string_literal: true

module Apifreaks
  module Types
    class VatValidateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::VatValidateRequestFormat }, optional: true, nullable: false

      field :vat_number, -> { String }, optional: false, nullable: false, api_name: "vatNumber"

      field :requester_vat_number, -> { String }, optional: true, nullable: false, api_name: "requesterVatNumber"
    end
  end
end
