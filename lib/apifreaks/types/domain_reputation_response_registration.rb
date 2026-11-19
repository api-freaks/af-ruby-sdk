# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Current registration status of the domain.
    class DomainReputationResponseRegistration < Internal::Types::Model
      field :status, -> { String }, optional: false, nullable: false

      field :past_registrations, -> { Integer }, optional: true, nullable: false
    end
  end
end
