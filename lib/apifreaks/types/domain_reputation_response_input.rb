# frozen_string_literal: true

module Apifreaks
  module Types
    # Input object containing the analyzed domain.
    class DomainReputationResponseInput < Internal::Types::Model
      field :domain, -> { String }, optional: false, nullable: false
    end
  end
end
