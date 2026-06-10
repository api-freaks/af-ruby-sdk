# frozen_string_literal: true

module Apifreaks
  module Types
    class TimezoneLookupResponseTimeZone < Internal::Types::Model
      field :name, -> { String }, optional: false, nullable: false

      field :offset, -> { Integer }, optional: false, nullable: false

      field :offset_with_dst, -> { Integer }, optional: false, nullable: false

      field :date, -> { String }, optional: false, nullable: false

      field :date_time, -> { String }, optional: false, nullable: false

      field :date_time_txt, -> { String }, optional: false, nullable: false

      field :date_time_wti, -> { String }, optional: false, nullable: false

      field :date_time_ymd, -> { String }, optional: false, nullable: false

      field :date_time_unix, -> { Integer }, optional: false, nullable: false

      field :time24, -> { String }, optional: false, nullable: false, api_name: "time_24"

      field :time12, -> { String }, optional: false, nullable: false, api_name: "time_12"

      field :week, -> { Integer }, optional: false, nullable: false

      field :month, -> { Integer }, optional: false, nullable: false

      field :year, -> { Integer }, optional: false, nullable: false

      field :year_abbr, -> { String }, optional: false, nullable: false

      field :current_tz_abbreviation, -> { String }, optional: false, nullable: false

      field :current_tz_full_name, -> { String }, optional: false, nullable: false

      field :standard_tz_abbreviation, -> { String }, optional: false, nullable: false

      field :standard_tz_full_name, -> { String }, optional: false, nullable: false

      field :is_dst, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :dst_savings, -> { Integer }, optional: false, nullable: false

      field :dst_exists, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :dst_start, -> { Apifreaks::Types::TimezoneLookupResponseTimeZoneDstStart }, optional: true, nullable: false

      field :dst_end, -> { Apifreaks::Types::TimezoneLookupResponseTimeZoneDstEnd }, optional: true, nullable: false
    end
  end
end
