# frozen_string_literal: true

module Apifreaks
  module Types
    class PhoneValidateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::PhoneValidateRequestFormat }, optional: true, nullable: false

      field :number, -> { String }, optional: false, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :dialer_region, -> { String }, optional: true, nullable: false
    end
  end
end
