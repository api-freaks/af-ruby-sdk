# frozen_string_literal: true

module Apifreaks
  module Types
    # Threat intelligence details for the indicator of compromise (IOC).
    class DomainReputationResponseIntelligence < Internal::Types::Model
      field :ioc_type, -> { String }, optional: false, nullable: false

      field :ioc_value, -> { String }, optional: false, nullable: false

      field :related_iocs, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseIntelligenceRelatedIocsItem] }, optional: false, nullable: false

      field :feed_tags, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :stix_pattern, -> { String }, optional: false, nullable: false

      field :recommended_action, -> { Apifreaks::Types::DomainReputationResponseIntelligenceRecommendedAction }, optional: false, nullable: false

      field :first_seen, -> { String }, optional: false, nullable: true

      field :last_seen, -> { String }, optional: false, nullable: true
    end
  end
end
