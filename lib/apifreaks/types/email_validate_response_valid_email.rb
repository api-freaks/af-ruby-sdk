# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    module EmailValidateResponseValidEmail
      extend Apifreaks::Internal::Types::Enum

      VALID = "valid"
      ACCEPT_ALL = "accept_all"
      INVALID = "invalid"
      INVALID_EMAIL = "INVALID_EMAIL"
      UNKNOWN = "unknown"
      RISKY = "risky"
      APP_SERVER_BLOCKED = "app_server_blocked"
    end
  end
end
