# frozen_string_literal: true

module Apifreaks
  module Types
    class EmailValidateResponseAccount < Internal::Types::Model
      field :role, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :full_mail_box, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "fullMailBox"
    end
  end
end
