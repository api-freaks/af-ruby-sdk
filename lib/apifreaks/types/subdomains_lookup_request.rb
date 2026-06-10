# frozen_string_literal: true

module Apifreaks
  module Types
    class SubdomainsLookupRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::SubdomainsLookupRequestFormat }, optional: true, nullable: false

      field :domain, -> { String }, optional: false, nullable: false

      field :after, -> { String }, optional: true, nullable: false

      field :before, -> { String }, optional: true, nullable: false

      field :status, -> { Apifreaks::Types::SubdomainsLookupRequestStatus }, optional: true, nullable: false

      field :page, -> { String }, optional: true, nullable: false
    end
  end
end
