# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailResponseItemDNS < Internal::Types::Model
      field :mx_record, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "mxRecord"

      field :a_record, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "aRecord"
    end
  end
end
