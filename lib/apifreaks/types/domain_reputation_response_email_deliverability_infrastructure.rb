# frozen_string_literal: true

module Apifreaks
  module Types
    # Mail server infrastructure backing the domain.
    class DomainReputationResponseEmailDeliverabilityInfrastructure < Internal::Types::Model
      field :mx_count, -> { Integer }, optional: false, nullable: false

      field :mx_records, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :mx_provider, -> { String }, optional: false, nullable: false

      field :null_mx, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
