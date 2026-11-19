# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Threat intelligence and security information for the IP.
    class GeolocationLookupV2ResponseSecurity < Internal::Types::Model
      field :threat_score, -> { Float }, optional: false, nullable: false

      field :is_tor, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_proxy, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :proxy_provider_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :proxy_confidence_score, -> { Float }, optional: false, nullable: false

      field :proxy_last_seen, -> { String }, optional: true, nullable: false

      field :proxy_days_seen30d, -> { Integer }, optional: true, nullable: false, api_name: "proxy_days_seen_30d"

      field :proxy_days_seen7d, -> { Integer }, optional: true, nullable: false, api_name: "proxy_days_seen_7d"

      field :proxy_provider_count30d, -> { Integer }, optional: true, nullable: false, api_name: "proxy_provider_count_30d"

      field :is_residential_proxy, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_vpn, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :vpn_provider_names, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :vpn_confidence_score, -> { Float }, optional: false, nullable: false

      field :vpn_last_seen, -> { String }, optional: true, nullable: false

      field :is_relay, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :relay_provider_name, -> { String }, optional: true, nullable: false

      field :is_anonymous, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_known_attacker, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_bot, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_spam, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_cloud_provider, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :cloud_provider_name, -> { String }, optional: true, nullable: false

      field :bot_confidence_score, -> { Float }, optional: true, nullable: false

      field :bot_last_seen, -> { String }, optional: true, nullable: false

      field :bot_operator_name, -> { String }, optional: true, nullable: false

      field :bot_type, -> { String }, optional: true, nullable: false

      field :corporate_gateway_provider_name, -> { String }, optional: true, nullable: false

      field :corporate_gateway_type, -> { String }, optional: true, nullable: false

      field :is_corporate_gateway, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_known_good_bot, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
