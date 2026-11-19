# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module VatSupportedCountriesRequestType
      extend Apifreaks::Internal::Types::Enum

      IBAN = "IBAN"
      SWIFT = "SWIFT"
      VAT = "VAT"
    end
  end
end
