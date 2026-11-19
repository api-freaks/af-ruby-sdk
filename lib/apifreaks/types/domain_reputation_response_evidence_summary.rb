# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Summary of reasons behind the risk assessment.
    class DomainReputationResponseEvidenceSummary < Internal::Types::Model
      field :why_flagged, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
