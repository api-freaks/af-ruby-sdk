# frozen_string_literal: true

module Apifreaks
  module Types
    class ZipcodeSearchByCityRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::ZipcodeSearchByCityRequestFormat }, optional: true, nullable: false

      field :city, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false

      field :state_name, -> { String }, optional: true, nullable: false

      field :page, -> { Integer }, optional: true, nullable: false
    end
  end
end
