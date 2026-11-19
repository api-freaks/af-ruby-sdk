# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Reputation and trust signals related to the domain's email sending history.
    class DomainReputationResponseEmailDeliverabilityReputation < Internal::Types::Model
      field :spam_blacklisted, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :newly_registered, -> { Internal::Types::Boolean }, optional: false, nullable: true

      field :domain_age_days, -> { Integer }, optional: true, nullable: true
    end
  end
end
