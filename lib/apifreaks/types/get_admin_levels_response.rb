# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class GetAdminLevelsResponse < Internal::Types::Model
      field :admin_levels, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
