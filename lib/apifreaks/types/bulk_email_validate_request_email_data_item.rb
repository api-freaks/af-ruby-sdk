# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateRequestEmailDataItem < Internal::Types::Model
      field :email, -> { String }, optional: false, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :ip, -> { String }, optional: true, nullable: false
    end
  end
end
