# frozen_string_literal: true

module Apifreaks
  module Types
    # Full domain reputation assessment response.
    class DomainReputationResponse < Internal::Types::Model
      field :input, -> { Apifreaks::Types::DomainReputationResponseInput }, optional: false, nullable: false

      field :assessed_at, -> { String }, optional: false, nullable: false

      field :version, -> { String }, optional: false, nullable: false

      field :processing_time_ms, -> { Integer }, optional: false, nullable: false

      field :risk_category, -> { Apifreaks::Types::DomainReputationResponseRiskCategory }, optional: false, nullable: false

      field :dga_score, -> { Apifreaks::Types::DomainReputationResponseDgaScore }, optional: false, nullable: false

      field :trust_signals, -> { Apifreaks::Types::DomainReputationResponseTrustSignals }, optional: false, nullable: false

      field :email_deliverability, -> { Apifreaks::Types::DomainReputationResponseEmailDeliverability }, optional: false, nullable: false

      field :intelligence, -> { Apifreaks::Types::DomainReputationResponseIntelligence }, optional: false, nullable: false

      field :evidence_summary, -> { Apifreaks::Types::DomainReputationResponseEvidenceSummary }, optional: false, nullable: false

      field :errors, -> { Internal::Types::Array[String] }, optional: false, nullable: false
    end
  end
end
