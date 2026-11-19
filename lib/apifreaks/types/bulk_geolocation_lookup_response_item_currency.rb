# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemCurrency < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :symbol, -> { String }, optional: true, nullable: false
    end
  end
end
