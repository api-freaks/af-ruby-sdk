# frozen_string_literal: true

module Apifreaks
  module Types
    class SubdomainsLookupResponse < Internal::Types::Model
      field :domain, -> { String }, optional: false, nullable: false

      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :query_time, -> { String }, optional: false, nullable: false

      field :current_page, -> { Integer }, optional: false, nullable: false

      field :total_pages, -> { Integer }, optional: false, nullable: false

      field :total_records, -> { Integer }, optional: false, nullable: false

      field :subdomains, -> { Internal::Types::Array[Apifreaks::Types::SubdomainsLookupResponseSubdomainsItem] }, optional: false, nullable: false
    end
  end
end
