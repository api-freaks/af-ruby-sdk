# frozen_string_literal: true

module Apifreaks
  module Types
    class GetAdminLevelsRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::GetAdminLevelsRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false
    end
  end
end
