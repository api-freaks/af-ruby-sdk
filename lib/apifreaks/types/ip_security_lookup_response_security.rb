# frozen_string_literal: true

module Apifreaks
  module Types
    class IPSecurityLookupResponseSecurity < Internal::Types::Model
      field :threat_score, -> { Integer }, optional: true, nullable: false

      field :is_tor, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_proxy, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :proxy_provider_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :proxy_confidence_score, -> { Integer }, optional: true, nullable: false

      field :proxy_last_seen, -> { String }, optional: true, nullable: false

      field :is_residential_proxy, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_vpn, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :vpn_provider_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :vpn_confidence_score, -> { Integer }, optional: true, nullable: false

      field :vpn_last_seen, -> { String }, optional: true, nullable: false

      field :is_relay, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :relay_provider_name, -> { String }, optional: true, nullable: false

      field :is_anonymous, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_known_attacker, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_bot, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_spam, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_cloud_provider, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :cloud_provider_name, -> { String }, optional: true, nullable: false
    end
  end
end
