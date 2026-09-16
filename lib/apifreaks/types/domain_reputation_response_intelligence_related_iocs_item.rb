# frozen_string_literal: true

module Apifreaks
  module Types
    # A related indicator of compromise.
    class DomainReputationResponseIntelligenceRelatedIocsItem < Internal::Types::Model
      field :type, -> { String }, optional: false, nullable: false

      field :value, -> { String }, optional: false, nullable: false

      field :confidence, -> { Integer }, optional: false, nullable: false
    end
  end
end
