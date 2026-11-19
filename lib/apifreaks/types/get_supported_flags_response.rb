# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Countries and organizations that have flags available.
    class GetSupportedFlagsResponse < Internal::Types::Model
      field :supported_countries, -> { Internal::Types::Array[Apifreaks::Types::GetSupportedFlagsResponseSupportedCountriesItem] }, optional: false, nullable: false

      field :supported_organizations, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
