# frozen_string_literal: true

module Apifreaks
  module Types
    # Email authentication mechanisms configured for the domain.
    class DomainReputationResponseEmailDeliverabilityAuthentication < Internal::Types::Model
      field :spf, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverabilityAuthenticationSpf }, optional: false, nullable: false

      field :dkim, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverabilityAuthenticationDkim }, optional: false, nullable: false

      field :dmarc, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverabilityAuthenticationDmarc }, optional: false, nullable: false
    end
  end
end
