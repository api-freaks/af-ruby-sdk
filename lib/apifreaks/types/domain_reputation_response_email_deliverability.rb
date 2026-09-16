# frozen_string_literal: true

module Apifreaks
  module Types
    # Assessment of the domain's ability to send and receive email reliably.
    class DomainReputationResponseEmailDeliverability < Internal::Types::Model
      field :score, -> { Integer }, optional: false, nullable: false

      field :grade, -> { String }, optional: false, nullable: false

      field :can_receive_email, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :authentication, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverabilityAuthentication }, optional: false, nullable: false

      field :infrastructure, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverabilityInfrastructure }, optional: false, nullable: false

      field :reputation, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverabilityReputation }, optional: false, nullable: false

      field :issues, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseEmailDeliverabilityIssuesItem] }, optional: false, nullable: false
    end
  end
end
