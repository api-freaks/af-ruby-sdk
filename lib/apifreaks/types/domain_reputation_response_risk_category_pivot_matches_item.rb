# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A related pivot linked to known threats.
    class DomainReputationResponseRiskCategoryPivotMatchesItem < Internal::Types::Model
      field :pivot, -> { String }, optional: false, nullable: false

      field :pivot_type, -> { String }, optional: false, nullable: false

      field :total_related_threats, -> { Integer }, optional: false, nullable: false

      field :confidence, -> { Float }, optional: false, nullable: false
    end
  end
end
