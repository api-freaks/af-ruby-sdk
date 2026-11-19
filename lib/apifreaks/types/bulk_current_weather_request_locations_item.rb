# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkCurrentWeatherRequestLocationsItem < Internal::Types::Model
      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Float }, optional: true, nullable: false

      field :long, -> { Float }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false
    end
  end
end
