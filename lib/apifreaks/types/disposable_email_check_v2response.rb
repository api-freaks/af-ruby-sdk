# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Disposable email check response.
    class DisposableEmailCheckV2Response < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: false

      field :valid_syntax, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validSyntax"

      field :domain, -> { Apifreaks::Types::DisposableEmailCheckV2ResponseDomain }, optional: false, nullable: false

      field :account, -> { Apifreaks::Types::DisposableEmailCheckV2ResponseAccount }, optional: true, nullable: false

      field :dns, -> { Apifreaks::Types::DisposableEmailCheckV2ResponseDNS }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :address, -> { Apifreaks::Types::DisposableEmailCheckV2ResponseAddress }, optional: true, nullable: false
    end
  end
end
