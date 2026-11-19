# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class BulkZipcodeLookupResponseResultsItem < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :region_code, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :latitude, -> { Float }, optional: true, nullable: false

      field :longitude, -> { Float }, optional: true, nullable: false
    end
  end
end
