# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainTyposquattingResponse < Internal::Types::Model
      field :status, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"

      field :current_page, -> { Integer }, optional: false, nullable: false, api_name: "currentPage"

      field :has_next_page, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "hasNextPage"

      field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"

      field :next_page_token, -> { String }, optional: true, nullable: false, api_name: "nextPageToken"

      field :domains, -> { Internal::Types::Array[Apifreaks::Types::DomainTyposquattingResponseDomainsItem] }, optional: false, nullable: false
    end
  end
end
