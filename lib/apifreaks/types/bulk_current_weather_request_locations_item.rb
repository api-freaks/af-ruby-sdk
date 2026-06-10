# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkCurrentWeatherRequestLocationsItem < Internal::Types::Model
      field :location, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false
    end
  end
end
