# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkPhoneValidateRequestNumbersItem < Internal::Types::Model
      field :number, -> { String }, optional: false, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :dialer_region, -> { String }, optional: true, nullable: false
    end
  end
end
