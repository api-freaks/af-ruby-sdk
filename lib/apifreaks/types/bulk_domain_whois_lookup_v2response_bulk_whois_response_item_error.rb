# frozen_string_literal: true

module Apifreaks
  module Types
    # Per-item error, returned in place of a WHOIS result when an individual domain's extension is unsupported or its
    # lookup otherwise fails.
    class BulkDomainWhoisLookupV2ResponseBulkWhoisResponseItemError < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false

      field :status_code, -> { Integer }, optional: false, nullable: false

      field :error, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
