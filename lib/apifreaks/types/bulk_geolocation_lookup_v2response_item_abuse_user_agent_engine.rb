# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Rendering engine details.
    class BulkGeolocationLookupV2ResponseItemAbuseUserAgentEngine < Internal::Types::Model
      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false

      field :version, -> { String }, optional: true, nullable: false

      field :version_major, -> { String }, optional: true, nullable: false
    end
  end
end
