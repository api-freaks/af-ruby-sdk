# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Disposable email check result for a single item in the bulk request.
    class BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItem < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: false

      field :valid_syntax, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validSyntax"

      field :domain, -> { Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemDomain }, optional: false, nullable: false

      field :account, -> { Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemAccount }, optional: true, nullable: false

      field :dns, -> { Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemDNS }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false

      field :address, -> { Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemAddress }, optional: true, nullable: false
    end
  end
end
