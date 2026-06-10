# frozen_string_literal: true

module Apifreaks
  module Types
    class EmailValidateRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::EmailValidateRequestFormat }, optional: true, nullable: false

      field :email, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false
    end
  end
end
