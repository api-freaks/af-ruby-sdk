# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkVatRateByCountryRequestCountriesItem < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: false

      field :state, -> { String }, optional: true, nullable: false
    end
  end
end
