# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GetAdminUnitsResponse < Internal::Types::Model
      field :admin_units, -> { Internal::Types::Array[Apifreaks::Types::GetAdminUnitsResponseAdminUnitsItem] }, optional: false, nullable: false
    end
  end
end
