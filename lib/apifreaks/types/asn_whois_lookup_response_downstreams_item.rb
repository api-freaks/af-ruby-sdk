# frozen_string_literal: true

module Apifreaks
  module Types
    class AsnWhoisLookupResponseDownstreamsItem < Internal::Types::Model
      field :as_number, -> { String }, optional: true, nullable: false, api_name: "asNumber"

      field :description, -> { String }, optional: true, nullable: false

      field :country, -> { String }, optional: true, nullable: false
    end
  end
end
