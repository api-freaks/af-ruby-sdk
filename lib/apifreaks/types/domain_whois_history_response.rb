# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisHistoryResponse < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :whois, -> { Apifreaks::Types::DomainWhoisHistoryResponseWhois }, optional: false, nullable: false

      field :total_records, -> { String }, optional: false, nullable: false

      field :whois_domains_historical, -> { Internal::Types::Array[Apifreaks::Types::DomainWhoisHistoryResponseWhoisDomainsHistoricalItem] }, optional: false, nullable: false
    end
  end
end
