# frozen_string_literal: true

module Apifreaks
  module Types
    class DomainDNSHistoryRequest < Internal::Types::Model
      field :api_key, -> { String }, optional: false, nullable: false, api_name: "apiKey"

      field :format, -> { Apifreaks::Types::DomainDNSHistoryRequestFormat }, optional: true, nullable: false

      field :host_name, -> { String }, optional: false, nullable: false, api_name: "host-name"

      field :type, -> { String }, optional: true, nullable: false

      field :page, -> { Integer }, optional: true, nullable: false
    end
  end
end
