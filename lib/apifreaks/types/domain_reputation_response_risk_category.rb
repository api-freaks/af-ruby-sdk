# frozen_string_literal: true

module Apifreaks
  module Types
    # Overall risk assessment for the domain.
    class DomainReputationResponseRiskCategory < Internal::Types::Model
      field :verdict, -> { Apifreaks::Types::DomainReputationResponseRiskCategoryVerdict }, optional: false, nullable: false

      field :confidence, -> { Integer }, optional: false, nullable: false

      field :primary_threat, -> { String }, optional: false, nullable: true

      field :severity, -> { Apifreaks::Types::DomainReputationResponseRiskCategorySeverity }, optional: false, nullable: false

      field :threat_types, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :sources, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseRiskCategorySourcesItem] }, optional: false, nullable: false

      field :pivot_matches, -> { Internal::Types::Array[Apifreaks::Types::DomainReputationResponseRiskCategoryPivotMatchesItem] }, optional: false, nullable: false
    end
  end
end
