# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainTyposquattingRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainTyposquattingRequestFormat }, optional: true, nullable: false

      field :keyword, -> { String }, optional: true, nullable: false

      field :pattern, -> { String }, optional: true, nullable: false

      field :page_token, -> { String }, optional: true, nullable: false, api_name: "pageToken"
    end
  end
end
