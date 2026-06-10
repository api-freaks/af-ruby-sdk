# frozen_string_literal: true

module Apifreaks
  module Types
    class BulkEmailValidateResponseEmailValidationResponsesItemAddressSecurity < Internal::Types::Model
      field :threat_score, -> { Integer }, optional: false, nullable: false

      field :is_tor, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_proxy, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :proxy_type, -> { String }, optional: false, nullable: false

      field :proxy_provider, -> { String }, optional: false, nullable: false

      field :is_anonymous, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_known_attacker, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_spam, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_bot, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :is_cloud_provider, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :cloud_provider, -> { String }, optional: false, nullable: false
    end
  end
end
