# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Wrapper containing the per-email results array.
    class BulkDisposableEmailCheckV2Response < Internal::Types::Model
      field :disposable_email_response, -> { Internal::Types::Array[Apifreaks::Types::BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItem] }, optional: false, nullable: false, api_name: "disposableEmailResponse"
    end
  end
end
