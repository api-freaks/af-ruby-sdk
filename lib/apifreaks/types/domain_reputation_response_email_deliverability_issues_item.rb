# frozen_string_literal: true

module Apifreaks
  module Types
    # A detected email deliverability issue or misconfiguration.
    class DomainReputationResponseEmailDeliverabilityIssuesItem < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :severity, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false

      field :recommendation, -> { String }, optional: true, nullable: false
    end
  end
end
