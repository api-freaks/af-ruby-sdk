# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A related indicator of compromise.
    class DomainReputationResponseIntelligenceRelatedIocsItem < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :confidence, -> { Float }, optional: false, nullable: false
    end
  end
end
