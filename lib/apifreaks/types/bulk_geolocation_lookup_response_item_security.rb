# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkGeolocationLookupResponseItemSecurity < Internal::Types::Model
      field :threat_score, -> { Integer }, optional: true, nullable: false

      field :is_tor, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_proxy, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :proxy_type, -> { String }, optional: true, nullable: false

      field :proxy_provider, -> { String }, optional: true, nullable: false

      field :is_anonymous, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_known_attacker, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_spam, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_bot, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :is_cloud_provider, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :cloud_provider, -> { String }, optional: true, nullable: false
    end
  end
end
