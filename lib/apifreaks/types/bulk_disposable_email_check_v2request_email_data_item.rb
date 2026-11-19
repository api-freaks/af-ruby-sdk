# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkDisposableEmailCheckV2RequestEmailDataItem < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: false

      field :ip, -> { String }, optional: true, nullable: false
    end
  end
end
