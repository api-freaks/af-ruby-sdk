# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeDistanceRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::ZipcodeDistanceRequestFormat }, optional: true, nullable: false

      field :compare, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :code, -> { String }, optional: true, nullable: false

      field :lat, -> { Integer }, optional: true, nullable: false

      field :long, -> { Integer }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :unit, -> { Apifreaks::Types::ZipcodeDistanceRequestUnit }, optional: true, nullable: false
    end
  end
end
