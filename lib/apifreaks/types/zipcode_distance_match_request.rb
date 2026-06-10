# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeDistanceMatchRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::ZipcodeDistanceMatchRequestFormat }, optional: true, nullable: false

      field :codes, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :distance, -> { Integer }, optional: true, nullable: false

      field :unit, -> { Apifreaks::Types::ZipcodeDistanceMatchRequestUnit }, optional: true, nullable: false
    end
  end
end
