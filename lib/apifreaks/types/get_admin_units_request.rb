# frozen_string_literal: true

module Apifreaks
  module Types
    class GetAdminUnitsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetAdminUnitsRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :admin_levels, -> { String }, optional: true, nullable: false, api_name: "adminLevels"
    end
  end
end
