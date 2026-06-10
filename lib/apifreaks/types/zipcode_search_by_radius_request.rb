# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeSearchByRadiusRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::ZipcodeSearchByRadiusRequestFormat }, optional: true, nullable: false

      field :code, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false

      field :radius, -> { Integer }, optional: false, nullable: false

      field :unit, -> { Apifreaks::Types::ZipcodeSearchByRadiusRequestUnit }, optional: true, nullable: false

      field :page, -> { Integer }, optional: true, nullable: false
    end
  end
end
