# frozen_string_literal: true

require_relative "../../apifreaks"

module Apifreaks
  module Types
    # Domain eligibility information (populated for TLDs with registrant eligibility requirements, e.g. .eu).
    class BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemAbuseContactEligibilityInfo < Internal::Types::Model
      field :id, -> { String }, optional: true, nullable: false

      field :name, -> { String }, optional: true, nullable: false

      field :type, -> { String }, optional: true, nullable: false
    end
  end
end
