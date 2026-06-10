# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkZipcodeLookupResponseResultsItem < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :country_code, -> { String }, optional: true, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :region_code, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :locality, -> { String }, optional: true, nullable: false

      field :latitude, -> { Integer }, optional: true, nullable: false

      field :longitude, -> { Integer }, optional: true, nullable: false
    end
  end
end
