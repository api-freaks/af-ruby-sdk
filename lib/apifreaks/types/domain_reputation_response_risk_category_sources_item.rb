# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # A threat intelligence source that flagged the domain.
    class DomainReputationResponseRiskCategorySourcesItem < Internal::Types::Model
      field :source, -> { String }, optional: false, nullable: false

      field :indicator, -> { String }, optional: false, nullable: false

      field :threat_type, -> { String }, optional: false, nullable: false

      field :confidence, -> { Float }, optional: false, nullable: false

      field :first_seen, -> { String }, optional: false, nullable: false

      field :last_seen, -> { String }, optional: false, nullable: false
    end
  end
end
