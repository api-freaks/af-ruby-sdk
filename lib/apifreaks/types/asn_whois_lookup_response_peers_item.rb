# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponsePeersItem < Internal::Types::Model
      field :as_number, -> { String }, optional: false, nullable: false, api_name: "asNumber"

      field :description, -> { String }, optional: false, nullable: false

      field :country, -> { String }, optional: false, nullable: false
    end
  end
end
