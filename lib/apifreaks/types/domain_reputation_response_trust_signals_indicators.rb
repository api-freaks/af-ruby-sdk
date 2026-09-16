# frozen_string_literal: true

module Apifreaks
  module Types
    # Individual trust / risk indicators for the domain.
    class DomainReputationResponseTrustSignalsIndicators < Internal::Types::Model
      field :is_newly_registered, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :uses_free_extension, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :uses_free_ssl, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :has_privacy_whois, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :ssl_age_days, -> { Integer }, optional: true, nullable: false

      field :has_dmarc, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :has_spf, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :redirects_externally, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :javascript_obfuscated, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :domain_age_days, -> { Integer }, optional: true, nullable: false

      field :registrar, -> { String }, optional: true, nullable: false
    end
  end
end
