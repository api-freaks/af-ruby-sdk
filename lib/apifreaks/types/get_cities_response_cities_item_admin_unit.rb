# frozen_string_literal: true

module Apifreaks
  module Types
    class GetCitiesResponseCitiesItemAdminUnit < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :admin_code, -> { String }, optional: false, nullable: false

      field :admin_level, -> { String }, optional: false, nullable: false
    end
  end
end
