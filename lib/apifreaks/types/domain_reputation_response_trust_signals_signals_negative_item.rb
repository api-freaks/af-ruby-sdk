# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A single trust signal contributing to the trust score.
    class DomainReputationResponseTrustSignalsSignalsNegativeItem < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :weight, -> { Integer }, optional: false, nullable: false

      field :polarity, -> { Apifreaks::Types::DomainReputationResponseTrustSignalsSignalsNegativeItemPolarity }, optional: false, nullable: false

      field :category, -> { String }, optional: false, nullable: false

      field :evidence, -> { String }, optional: false, nullable: false

      field :confidence, -> { Float }, optional: false, nullable: false
    end
  end
end
