# frozen_string_literal: true

module Apifreaks
  module Types
    class GeolocationLookupResponseCurrency < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :symbol, -> { String }, optional: true, nullable: false
    end
  end
end
