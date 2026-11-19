# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class ZipcodeSearchByRadiusResponseResultsItem < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :region, -> { String }, optional: true, nullable: false

      field :region_code, -> { String }, optional: true, nullable: false

      field :city, -> { String }, optional: true, nullable: false

      field :district, -> { String }, optional: true, nullable: false

      field :distance, -> { Float }, optional: true, nullable: false
    end
  end
end
