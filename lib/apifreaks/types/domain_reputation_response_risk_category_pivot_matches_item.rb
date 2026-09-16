# frozen_string_literal: true

module Apifreaks
  module Types
    # A related pivot linked to known threats.
    class DomainReputationResponseRiskCategoryPivotMatchesItem < Internal::Types::Model
      field :pivot, -> { String }, optional: false, nullable: false

      field :pivot_type, -> { String }, optional: false, nullable: false

      field :total_related_threats, -> { Integer }, optional: false, nullable: false

      field :confidence, -> { Integer }, optional: false, nullable: false
    end
  end
end
