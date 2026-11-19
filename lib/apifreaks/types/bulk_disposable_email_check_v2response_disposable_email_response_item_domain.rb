# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Domain-level disposable/spam/free classification for the email address.
    class BulkDisposableEmailCheckV2ResponseDisposableEmailResponseItemDomain < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :valid_domain, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "validDomain"

      field :disposable, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :free, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :spam, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
