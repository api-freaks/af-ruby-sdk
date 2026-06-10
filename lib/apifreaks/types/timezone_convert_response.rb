# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneConvertResponse < Internal::Types::Model
      field :original_time, -> { String }, optional: false, nullable: false

      field :converted_time, -> { String }, optional: false, nullable: false

      field :diff_hour, -> { Integer }, optional: false, nullable: false

      field :diff_min, -> { Integer }, optional: false, nullable: false
    end
  end
end
