# frozen_string_literal: true

module Apifreaks
  module Types
    # The original request data provided by the client.
    class PhoneValidateResponseRawInput < Internal::Types::Model
      field :number, -> { String }, optional: true, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :dialer_region, -> { String }, optional: true, nullable: false
    end
  end
end
