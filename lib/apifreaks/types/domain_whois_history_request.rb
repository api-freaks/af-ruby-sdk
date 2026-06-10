# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainWhoisHistoryRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainWhoisHistoryRequestFormat }, optional: true, nullable: false

      field :domain_name, -> { String }, optional: false, nullable: false, api_name: "domainName"
    end
  end
end
