# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainTyposquattingResponseDomainsItem < Internal::Types::Model
      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"

      field :create_date, -> { String }, optional: true, nullable: false, api_name: "createDate"

      field :expiry_date, -> { String }, optional: true, nullable: false, api_name: "expiryDate"

      field :last_seen, -> { String }, optional: true, nullable: false, api_name: "lastSeen"

      field :is_dropped, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isDropped"
    end
  end
end
