# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    class TimezoneConvertResponse < Internal::Types::Model
      field :original_time, -> { String }, optional: false, nullable: false

      field :converted_time, -> { String }, optional: false, nullable: false

      field :diff_hour, -> { Float }, optional: false, nullable: false

      field :diff_min, -> { Float }, optional: false, nullable: false
    end
  end
end
