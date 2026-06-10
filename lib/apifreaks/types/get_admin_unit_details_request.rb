# frozen_string_literal: true

module Apifreaks
  module Types
    class GetAdminUnitDetailsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetAdminUnitDetailsRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :admin_unit, -> { String }, optional: false, nullable: false
    end
  end
end
