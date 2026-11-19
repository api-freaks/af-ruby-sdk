# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Input object containing the analyzed domain.
    class DomainReputationResponseInput < Internal::Types::Model
      field :domain, -> { String }, optional: false, nullable: false
    end
  end
end
