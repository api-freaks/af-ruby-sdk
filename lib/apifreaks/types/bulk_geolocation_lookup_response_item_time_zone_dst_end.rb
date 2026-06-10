# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemTimeZoneDstEnd < Internal::Types::Model
      field :utc_time, -> { String }, optional: true, nullable: false

      field :duration, -> { String }, optional: true, nullable: false

      field :gap, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :date_time_after, -> { String }, optional: true, nullable: false

      field :date_time_before, -> { String }, optional: true, nullable: false

      field :overlap, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
