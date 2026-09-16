# frozen_string_literal: true

module Apifreaks
  module Types
    # A single trust signal contributing to the trust score.
    class DomainReputationResponseTrustSignalsSignalsNegativeItem < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :weight, -> { Integer }, optional: false, nullable: false

      field :polarity, -> { Apifreaks::Types::DomainReputationResponseTrustSignalsSignalsNegativeItemPolarity }, optional: false, nullable: false

      field :category, -> { String }, optional: false, nullable: false

      field :evidence, -> { String }, optional: false, nullable: false

      field :confidence, -> { Integer }, optional: false, nullable: false
    end
  end
end
