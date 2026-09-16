# frozen_string_literal: true

module Apifreaks
  module Types
    # Domain eligibility information (populated for TLDs with registrant eligibility requirements, e.g. .eu).
    class DomainWhoisLookupV2ResponseEligibilityInfo < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
