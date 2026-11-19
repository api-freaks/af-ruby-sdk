# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class ZipcodeDistanceMatchResponseResultsItem < Internal::Types::Model
      field :code1, -> { String }, optional: true, nullable: false, api_name: "code_1"

      field :code2, -> { String }, optional: true, nullable: false, api_name: "code_2"

      field :distance, -> { Float }, optional: true, nullable: false
    end
  end
end
