# frozen_string_literal: true

module Apifreaks
  module Types
    class GetSupportedFlagsResponseItem < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :iso2, -> { String }, optional: false, nullable: false

      field :iso3, -> { String }, optional: false, nullable: false
    end
  end
end
