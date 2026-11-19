# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Credit balances for the organization's subscription, subscription surcharge, and one-off purchases.
    class GetCreditsUsageResponse < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :user_status, -> { Apifreaks::Types::GetCreditsUsageResponseUserStatus }, optional: false, nullable: false, api_name: "userStatus"

      field :sub_active, -> { Internal::Types::Boolean }, optional: true, nullable: true, api_name: "subActive"

      field :sub_status, -> { Apifreaks::Types::GetCreditsUsageResponseSubStatus }, optional: true, nullable: true, api_name: "subStatus"

      field :sub_allowed_credits, -> { Integer }, optional: true, nullable: true, api_name: "subAllowedCredits"

      field :sub_used_credits, -> { Integer }, optional: true, nullable: true, api_name: "subUsedCredits"

      field :sub_surcharge_status, -> { Apifreaks::Types::GetCreditsUsageResponseSubSurchargeStatus }, optional: true, nullable: true, api_name: "subSurchargeStatus"

      field :sub_surcharge_allowed_credits, -> { Integer }, optional: true, nullable: true, api_name: "subSurchargeAllowedCredits"

      field :sub_surcharge_used_credits, -> { Integer }, optional: true, nullable: true, api_name: "subSurchargeUsedCredits"

      field :sub_surcharge_allowed, -> { Internal::Types::Boolean }, optional: true, nullable: true, api_name: "subSurchargeAllowed"

      field :one_off_credits_active, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "oneOffCreditsActive"

      field :one_off_allowed_credits, -> { Integer }, optional: false, nullable: false, api_name: "oneOffAllowedCredits"

      field :one_off_used_credits, -> { Integer }, optional: false, nullable: false, api_name: "oneOffUsedCredits"
    end
  end
end
