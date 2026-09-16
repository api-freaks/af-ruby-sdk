# frozen_string_literal: true

module Apifreaks
  module Types
    # DST transition details (used for both the DST start and DST end transitions). Always present as a key on the
    # parent TimeZone object; returned as an empty object {} when dst_exists is false, so none of its properties are
    # required.
    class TimezoneLookupV2ResponseTimeZoneDstEnd < Internal::Types::Model
      field :utc_time, -> { String }, optional: true, nullable: false

      field :duration, -> { String }, optional: true, nullable: false

      field :gap, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :date_time_after, -> { String }, optional: true, nullable: false

      field :date_time_before, -> { String }, optional: true, nullable: false

      field :overlap, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
