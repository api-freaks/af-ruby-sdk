# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Company or ISP information mapped to the IP address.
    class GeolocationLookupV2ResponseCompany < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :domain, -> { String }, optional: true, nullable: false
    end
  end
end
