# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Network information for the IP.
    class BulkGeolocationLookupV2ResponseItemAbuseNetwork < Internal::Types::Model
      field :connection_type, -> { String }, optional: true, nullable: false

      field :route, -> { String }, optional: true, nullable: false

      field :is_anycast, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :cdn_provider_name, -> { String }, optional: true, nullable: false

      field :is_cdn, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
