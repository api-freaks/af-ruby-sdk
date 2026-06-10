# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeSearchByRegionRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::ZipcodeSearchByRegionRequestFormat }, optional: true, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :region, -> { String }, optional: false, nullable: false

      field :page, -> { Integer }, optional: true, nullable: false
    end
  end
end
